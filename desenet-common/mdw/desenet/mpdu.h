#pragma once
#include <string>
#include "frame.h"
#include "types.h"

namespace desenet {

	class MPDU : public Frame{
	public:
		static const uint8_t SIZE = Frame::HEADER_SIZE + 32 + Frame::FOOTER_SIZE;			// 32 byte limit comes from Nrf24 transceiver
		static const uint8_t SID_MASK = 0x7F;												// To mask the frameType
		/**
		 * @brief Constructs a new beacon frame.
		 *
		 * Allocates a new frame and initializes its fields to the given parameter values and default values for all other fields.
		 *
		 * @param cycleInterval The cycle interval in microseconds.
		 */
		MPDU();

		/**
		 * @brief Constructs a Beacon from the frame data.
		 *
		 * Note that the constructor does not fail if the actual data in the frame is not a Beacon frame. Use the type() method and ensure that it returns
		 * Beacon in order to check if the beacon data is valid.
		 *
		 * @param frame The frame to use to get the beacon data.
		 */
		MPDU(const Frame & frame);

		/**
		 * @brief Sets the destination address
		 */
		void setDestinationAddress(Address destinationAddress);

		/**
		 * @brief Returns the network time field as milliseconds since UNIX epoch.
		 *
		 * @return  Network time.
		 */
		uint8_t sensorID() const;

		/**
		 * @brief Sets the network time field using time as milliseconds since UNIX epoch.
		 *
		 * @param time  Network time.
		 */
		void setSensorID(uint8_t sensorID);

		/**
		 * @brief Returns the DESENET cycle interval as microseconds.
		 *
		 * @return  Cycle interval in microseconds.
		 */
		uint8_t nbEPDU() const;

		/**
		 * @brief Sets the DESENET cycle interval to interval in microseconds.
		 *
		 * @param interval  Cycle interval in microseconds.
		 */
		void setNbEPDU(uint8_t nbEPDU);

		bool addSvEPDU(SvGroup group, SharedByteBuffer *theBuffer, uint8_t length);

		bool addEvEPDU(EvId id, SharedByteBuffer *theBuffer, uint8_t length);

		void clearEPDU (void);

	private :
		void reset(void);
		struct EPDU_HEADER
		{
			uint8_t lenght 	: 3;
			uint8_t svGroup : 4;
			uint8_t type	: 1;
		};

		union EPDU_HEADER_UINT8
		{
			uint8_t byte;
			EPDU_HEADER epduHeader;
		};

	private :
		uint8_t epduOffset;
	};

}
