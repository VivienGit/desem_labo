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

MPDU::MPDU()
 : Frame(MPDU::SIZE)
{
	clearEPDU();
}

MPDU::MPDU(const Frame & frame)
 : Frame(frame)
{
	epduOffset = 0;
}

void MPDU::setDestinationAddress(Address destinationAddress)
{
	Frame::setDestination(destinationAddress);
}

uint8_t MPDU::sensorID() const
{
	uint8_t sensorID;
	memcpy(&sensorID, buffer() + Frame::HEADER_SIZE + 0, sizeof(sensorID));
	sensorID = sensorID & SID_MASK;    					// Erase the framType
	return sensorID;
}

void MPDU::setSensorID(uint8_t sensorID)
{
	// Copy the sensorID (Erase frametype field, done after)
	memcpy(buffer() + Frame::HEADER_SIZE + 0, &sensorID, sizeof(sensorID));
}

uint8_t MPDU::nbEPDU() const
{
	uint8_t nbEPDU;
	memcpy(&nbEPDU, buffer() + Frame::HEADER_SIZE + 1, sizeof(nbEPDU));
	return nbEPDU;
}

void MPDU::setNbEPDU(uint8_t nbEPDU)
{
	// Copy the sensorID (Erase frametype field, done after)
	memcpy(buffer() + Frame::HEADER_SIZE + 1, &nbEPDU, sizeof(nbEPDU));
}

bool MPDU::addSvEPDU(SvGroup group, SharedByteBuffer *theBuffer, uint8_t length)
{
	bool isWritten = true;
	EPDU_HEADER header;
	// Is there enough space ?
	if(length <= (32 - 2 - epduOffset))				// -2 because FT/SID and ePDUcount
	{
		// Increment the number of ePDUs
		setNbEPDU(nbEPDU() + 1);
		// Make the header and copy it
		header.lenght = length;
		header.svGroup = group;
		header.type = 0;
		memcpy(buffer() + Frame::HEADER_SIZE + epduOffset, &header, sizeof(header));
		// Copy the buffer in ePDU frame
		memcpy(buffer() + Frame::HEADER_SIZE + epduOffset + 1, theBuffer->data(), length);
		// Adjust the end of the ePDUs
		epduOffset += (1 + length);
	    setLength(Frame::HEADER_SIZE + epduOffset);
	}else
		isWritten = false;

	return isWritten;
}

bool desenet::MPDU::addEvEPDU(EvId evId, SharedByteBuffer* theBuffer, uint8_t length)
{
	{
		bool isWritten = true;
		EPDU_HEADER header;
		// Is there enough space ?
		if(length <= (32 - 2 - epduOffset))				// -2 because FT/SID and ePDUcount
		{
			// Increment the number of ePDUs
			setNbEPDU(nbEPDU() + 1);
			// Make the header and copy it
			header.lenght = length;
			header.svGroup = evId;
			header.type = 1;
			memcpy(buffer() + Frame::HEADER_SIZE + epduOffset, &header, sizeof(header));
			// Copy the buffer in ePDU frame
			memcpy(buffer() + Frame::HEADER_SIZE + epduOffset + 1, theBuffer, length);
			// Adjust the end of the ePDUs
			epduOffset += (1 + length);
		    setLength(Frame::HEADER_SIZE + epduOffset);
		}else
			isWritten = false;

		return isWritten;
	}
}

void MPDU::clearEPDU(void)
{
	memset(buffer() + Frame::HEADER_SIZE, 0, 32);	// Set the payload to 0
    setDestination(GATEWAY_ADDRESS);				// Set the 4 first bytes
    //setSensorID(DESENET_SLOT_NUMBER);				// Coming from "platform-config.h"
    setSensorID(1);									// Coming from "platform-config.h"
    setType(FrameType::MPDU);						// Overwrite the last bit (frameType)
    setNbEPDU((uint8_t)0);							// Default value is 0
    epduOffset = 2;									// 1 for FT and SID and 1 for ePDU count
    setLength(Frame::HEADER_SIZE + epduOffset);		// The header + FT and SID
}
