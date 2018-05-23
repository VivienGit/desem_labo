#include <assert.h>
#include <array>
#include <list>
#include <map>
#include <vector>
#include <utility>
#include "platform-config.h"
#include "desenet/frame.h"
#include "desenet/beacon.h"
#include "abstractapplication.h"
#include "factory.h"
#include "networkentity.h"
#include "board/ledcontroller.h"

using std::array;
using std::list;
using std::map;
using std::make_pair;
using std::bind;
using std::pair;
using std::vector;

using desenet::sensor::NetworkEntity;

NetworkEntity * NetworkEntity::_pInstance(nullptr);		// Instantiation of static attribute

NetworkEntity::NetworkEntity()
 : _pTimeSlotManager(nullptr),
   _pTransceiver(nullptr)
{
	assert(!_pInstance);		// Only one instance allowed
	_pInstance = this;
}

NetworkEntity::~NetworkEntity()
{
}

void NetworkEntity::initialize()
{
	// Initialize the element of the app that publish request (to test if the SvGroup is already used)
	for (size_t i = 0; i < 16; i++)
		groupArray[i] = nullptr;
}

void NetworkEntity::initializeRelations(ITimeSlotManager & timeSlotManager, NetworkInterfaceDriver & transceiver)
{
	_pTimeSlotManager = &timeSlotManager;
    _pTransceiver = &transceiver;

     // Set the receive callback between transceiver and network. Bind this pointer to member function
    transceiver.setReceptionHandler(std::bind(&NetworkEntity::onReceive, this, std::placeholders::_1, std::placeholders::_2, std::placeholders::_3, std::placeholders::_4));

    // Set the NetworkEntity as an observer of of the TimeSlotManager
    _pTimeSlotManager->setObserver(*this);
}

/**
 * This method does not automatically create an instance if there is none created so far.
 * It is up the the developer to create an instance of this class prior to access the instance() method.
 */
//static
NetworkEntity & NetworkEntity::instance()
{
	assert(_pInstance);
	return *_pInstance;
}

/**
 * Called by the NetworkInterfaceDriver (layer below) after reception of a new frame
 */
void NetworkEntity::onReceive(NetworkInterfaceDriver & driver, const uint32_t receptionTime, const uint8_t * const buffer, size_t length)
{
	UNUSED(driver);
	UNUSED(receptionTime);
	Frame frame = Frame::useBuffer(buffer, length);
	if (frame.isValid())
	{
		// Test if it's a beacon frame
		if (frame.type() == FrameType::Beacon)
		{
			// Make the Led flash
			Factory::instance().ledController().flashLed(0);
			Beacon b(frame);
			// Launch the timer
			timeSlotManager().onBeaconReceived(b.slotDuration());

			// Send the notification to the applications
			for(ApplicationSyncList::iterator it = appList.begin(); it != appList.end(); it++)
			{
				// Send reception time to abstractApplication to synch the app
				(*it)->svSyncIndication(b.networkTime());
			}
			SharedByteBuffer theBuffer(7);				// ePDU length on 3 bit
			SharedByteBuffer::sizeType length;
			bool isWritten = true;
			size_t i = 0;
			// Send the publishIndication
			while (isWritten && i < 16)
			{
				if(groupArray[i] != nullptr)
				{
					// Send the publication
					length = groupArray[i]->svPublishIndication((SvGroup)i, theBuffer);
					// Add the EPDU frame
					isWritten = mpdu.addSvEPDU((SvGroup)i, &theBuffer, length);
				}
				i++;
			}
			// Write all event ePDU
			for(EventElementList::iterator it = eventList.begin(); it != eventList.end(); it++)
			{
				Trace::outln("One event");
				mpdu.addEvEPDU((*it).id,&(*it).data,(*it).data.length());
			}
			eventList.clear();		// Chnage this, verify if it's correctly added and delete the element
		}
	}
}

void NetworkEntity::svSyncRequest(AbstractApplication* callApp)
{
	appList.push_front(callApp);
}

void NetworkEntity::onTimeSlotSignal(const ITimeSlotManager& timeSlotManager, const ITimeSlotManager::SIG & signal)
{
	switch(signal)
	{
	///< Indicates start of cycle (beacon received).
	case ITimeSlotManager::CYCLE_START :
		break;
	///< End of cycle (last slot finished).
	case ITimeSlotManager::CYCLE_FINISH :
		break;

	///< Start of our slot.
	case ITimeSlotManager::OWN_SLOT_START :
		Trace::outln(mpdu.toString());
		*_pTransceiver << mpdu;
		mpdu.clearEPDU();
		break;

	///< End of our slot.
	case ITimeSlotManager::OWN_SLOT_FINISH :
		break;

	default  :
		break;
	}
}

bool NetworkEntity::svPublishRequest(AbstractApplication* callApp, SvGroup group)
{
	bool added = true;
	// If the corresponding group in the array is empty, the group is free
	if(groupArray[group] == nullptr)
		groupArray[group] = callApp;
	else
		added = false;
	return added;
}

// Add event to the list of that
void desenet::sensor::NetworkEntity::evPublishRequest(EvId id, SharedByteBuffer & evData)
{
	EventElement	eventElement(id, evData);
	// This time it's a push_back because the events have an appearance order !!!
	eventList.push_back(eventElement);
}
