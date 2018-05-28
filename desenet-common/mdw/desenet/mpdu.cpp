#include <algorithm>
#include <cstring>
#include "platform-config.h"
#include "mpdu.h"

using std::string;
using std::uint32_t;
using std::uint8_t;
using std::size_t;
using std::min;
using std::memcpy;
using std::memset;
using std::bitset;

extern desenet::SlotNumber __SLOT_NUMBER;			///< Slot number variable define in the factory.

MPDU::MPDU()
 : Frame(MPDU::SIZE)
{
	clearEPDU();									///< Set the MPDU frame fields to there default values.
}

// Not used
MPDU::MPDU(const Frame & frame)
 : Frame(frame)
{
	epduOffset = 2;									// 1 for FT and SID and 1 for ePDU count
}

// Sets the destination address
void MPDU::setDestinationAddress(Address destinationAddress)
{
	Frame::setDestination(destinationAddress);
}

// Returns the sensorID field.
uint8_t MPDU::sensorID() const
{
	uint8_t sensorID;
	memcpy(&sensorID, buffer() + Frame::HEADER_SIZE + 0, sizeof(sensorID));
	sensorID = sensorID & SID_MASK;    					// Erase the framType
	return sensorID;
}

// Sets the sensorID field.
void MPDU::setSensorID(uint8_t sensorID)
{
	// Copy the sensorID (Erase frametype field, done after)
	memcpy(buffer() + Frame::HEADER_SIZE + 0, &sensorID, sizeof(sensorID));
}

// Returns the number of EPDU present in the buffer
uint8_t MPDU::nbEPDU() const
{
	uint8_t nbEPDU;
	memcpy(&nbEPDU, buffer() + Frame::HEADER_SIZE + 1, sizeof(nbEPDU));
	return nbEPDU;
}

// Sets the number of EPDU present in the buffer
void MPDU::setNbEPDU(uint8_t nbEPDU)
{
	// Copy the sensorID (Erase frametype field, done after)
	memcpy(buffer() + Frame::HEADER_SIZE + 1, &nbEPDU, sizeof(nbEPDU));
}

// Adds a sample value EPDU to the buffer
bool MPDU::addSvEPDU(SvGroup group, SharedByteBuffer *theBuffer, uint8_t length)
{
	bool isWritten = true;						// The return value -- false if not written
	SV_EPDU_HEADER header;

	// Is there enough space ?
	if(length <= (32 - epduOffset))				// epduOffset begin at 2 (FT/SID and ePDUcount)
	{
		// Increment the number of ePDUs
		setNbEPDU(nbEPDU() + 1);
		// Set the header of the EPDU frame
		header.length = length;
		header.svGroup = group;
		header.type = 0;
		// Copy the header in the EPDU frame
		memcpy(buffer() + Frame::HEADER_SIZE + epduOffset, &header, sizeof(header));
		// Copy the buffer in ePDU frame
		memcpy(buffer() + Frame::HEADER_SIZE + epduOffset + 1, theBuffer->data(), length);	// + 1 for the header
		// Adjust the end of the ePDUs
		epduOffset += (1 + length);			// + 1 for the header
		// Cut the frame at the good size
	    setLength(Frame::HEADER_SIZE + epduOffset);
	}else
		isWritten = false;					// If there is not enough space, inform the epdu was not written

	return isWritten;
}

// Adds an event value EPDU to the buffer
bool desenet::MPDU::addEvEPDU(EvId evId, SharedByteBuffer* theBuffer, uint8_t length)
{
	{
		bool isWritten = true;					// The return value -- false if not written
		EV_EPDU_HEADER header;

		// Is there enough space ?
		if(length <= (32 - epduOffset))			// epduOffset begin at 2 (FT/SID and ePDUcount)
		{
			// Increment the number of ePDUs
			setNbEPDU(nbEPDU() + 1);
			// Set the header of the EPDU frame
			header.length = length;
			header.evId = evId;
			header.type = 1;
			// Copy the header in the EPDU frame
			memcpy(buffer() + Frame::HEADER_SIZE + epduOffset, &header, sizeof(header));
			// Copy the buffer in the EPDU frame
			memcpy(buffer() + Frame::HEADER_SIZE + epduOffset + 1, theBuffer, length);	// + 1 for the header
			// Adjust the end of the ePDUs
			epduOffset += (1 + length);				// + 1 for the header
			// Cut the frame at the good size
		    setLength(Frame::HEADER_SIZE + epduOffset);
		}else
			isWritten = false;					// If there is not enough space, inform the epdu was not written

		return isWritten;
	}
}

// Sets the MPDU frame fields to there default values
void MPDU::clearEPDU(void)
{
	memset(buffer() + Frame::HEADER_SIZE, 0, 32);	// Set the payload to 0
    setDestination(GATEWAY_ADDRESS);				// Set the destination address
    setSensorID(__SLOT_NUMBER);						// Set the sensor ID
    setType(FrameType::MPDU);						// Set the frame type
    setNbEPDU(0);									// Set the number of EPDU in the frame, default value is 0
    epduOffset = 2;									// Set the initial position in the frame, one byte for FT and SID and one for ePDU count
    setLength(Frame::HEADER_SIZE + epduOffset);		// Cut the frame at it initial size (header + FT and SID + ePDU count)
}
