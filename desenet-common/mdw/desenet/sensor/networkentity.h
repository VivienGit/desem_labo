#ifndef SENSOR_NETWORK_ENTITY_H
#define SENSOR_NETWORK_ENTITY_H

#include <assert.h>
#include <list>
#include <array>
#include "platform-config.h"
#include "desenet/desenet.h"
#include "desenet/networkinterfacedriver.h"
#include "itimeslotmanager.h"
#include "desenet/mpdu.h"

using desenet::NetworkInterfaceDriver;
using namespace desenet;

namespace desenet {
namespace sensor {

class AbstractApplication;
class Net;

/**
 * @brief Implements the desenet protocol on the network layer.
 */
class NetworkEntity : public ITimeSlotManager::Observer
{
	friend class AbstractApplication;
	friend class Net;

public:
	NetworkEntity();
	virtual ~NetworkEntity();

	void initialize();																						///< Initializes the instance.
	void initializeRelations(ITimeSlotManager & timeSlotManager, NetworkInterfaceDriver & transceiver);		///< Initializes all relations needed by the instance.

	static NetworkEntity & instance();																		///< Returns reference to single instance.

protected:
	/**
	 * @brief Holds event information.
	 */
    struct EventElement
    {
        EventElement(EvId id, SharedByteBuffer & data)
         : id(id), data(data)
        {}

        EvId id;						///< Event identifier (ex. EVID_JOYSTICK).
        SharedByteBuffer data;			///< Data that goes together with the event.
    };

	// desenet::NetworkInterfaceDriver::Callback callback
protected:
	/**
	 * @brief Called by the lower layer after reception of a new frame
	 */
	virtual void onReceive(NetworkInterfaceDriver & driver, const uint32_t receptionTime, const uint8_t * const buffer, size_t length);

protected:
	inline ITimeSlotManager & timeSlotManager() const { assert(_pTimeSlotManager); return *_pTimeSlotManager; }	///< Internal access to TimeSlotManager
	inline NetworkInterfaceDriver & transceiver() const { assert(_pTransceiver); return *_pTransceiver; }		///< Internal access to Transceiver

protected:
	typedef std::list<AbstractApplication *> ApplicationSyncList;
	typedef std::array<AbstractApplication *, 16> ApplicationPublishersArray;
	typedef std::list<EventElement> EventElementList;

protected:
	static NetworkEntity * _pInstance;				///< Pointer to single instance.
	ITimeSlotManager * _pTimeSlotManager;			///< Pointer to TimeSlotManager.
	NetworkInterfaceDriver * _pTransceiver;			///< Pointer to transceiver.

// Adding by Vivien
public :
	// Polymorphism from ITimeSlotManager
	virtual void onTimeSlotSignal(const ITimeSlotManager & timeSlotManager, const ITimeSlotManager::SIG & signal);
	MPDU mpdu;
private:
	// Callback method of abstract application
	// Registers the application at the DESENET stack in order to get synchronized.
	void svSyncRequest(AbstractApplication* callApp);

	// Callback method of abstract application
	// Using this method an application can ask to publish sampled values for the given group.
	// Return True on success, false if there is already another application publishing for that group.
	bool svPublishRequest(AbstractApplication* callApp, SvGroup group);

	// Callback method of abstract application
	// Publishes the given event
	void evPublishRequest(EvId id,SharedByteBuffer & evData);

	ApplicationSyncList appList;				// List of application registered
	ApplicationPublishersArray groupArray;		// List of group registered
	EventElementList eventList;					// List of event received
};

} // sensor
} // desenet
#endif // SENSOR_NETWORK_ENTITY_H
