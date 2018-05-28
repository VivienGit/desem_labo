#pragma once
#include <string>
#include "frame.h"
#include "types.h"

namespace desenet {

	/**
	 * @brief Object to represent a MPDU Frame.
	 *
	 * The class can be used to construct a DESENET MPDU frame
	 */
	class MPDU : public Frame{
	public:
		static const uint8_t SIZE = Frame::HEADER_SIZE + 32 + Frame::FOOTER_SIZE;			// 32 byte limit comes from Nrf24 transceiver
		static const uint8_t SID_MASK = 0x7F;												// To mask the frameType when getting the sensor ID

		/**
		 * @brief Constructs a new MPDU frame.
		 *
		 * Allocates a new frame and initializes its fields to the given parameter values and default values for all other fields.
		 */
		MPDU();

		/**
		 * @brief Constructs a MDPU from the frame data.
		 *
		 * Note that the constructor does not fail if the actual data in the frame is not a MPDU frame. Use the type() method and ensure that it returns
		 * MPDU in order to check if the beacon data is valid.
		 *
		 * @param frame The frame to use to get the MPDU data.
		 */
		MPDU(const Frame & frame);

		/**
		 * @brief Sets the destination address
		 */
		void setDestinationAddress(Address destinationAddress);

		/**
		 * @brief Returns the sensorID field.
		 *
		 * @return uint8_t sensorID .
		 */
		uint8_t sensorID() const;

		/**
		 * @brief Sets the sensorID field.
		 *
		 * @param uint8_t sensorID.
		 */
		void setSensorID(uint8_t sensorID);

		/**
		 * @brief Returns the number of EPDU present in the buffer.
		 *
		 * @return  uint8_t nbEPDU.
		 */
		uint8_t nbEPDU() const;

		/**
		 * @brief Sets the number of EPDU present in the buffer.
		 *
		 * @param uint8_t nbEPDU.
		 */
		void setNbEPDU(uint8_t nbEPDU);

		/**
		 * @brief Adds a sample value EPDU to the buffer.
		 *
		 * @param 	SvGroup group 				-- The group where the EPDU comes from
		 * 			SharedByteBuffer *theBuffer -- That buffer that contain the sample values
		 * 			uint8_t length 				-- The length of the data conatain in theBuffer
		 *
		 * @return 	bool isWritten				-- True if the EPDU has been added to the frame, or false if it is not the case
		 */
		bool addSvEPDU(SvGroup group, SharedByteBuffer *theBuffer, uint8_t length);

		/**
		 * @brief Adds an event EPDU to the buffer.
		 *
		 * @param 	EvId id 					-- The id of the event added
		 * 			SharedByteBuffer *theBuffer -- That buffer that contain the event values
		 * 			uint8_t length 				-- The length of the data contain in theBuffer
		 *
		 * @return 	bool isWritten				-- True if the EPDU has been added to the frame, or false if it is not the case
		 */
		bool addEvEPDU(EvId id, SharedByteBuffer *theBuffer, uint8_t length);

		/**
		 * @brief Sets the MPDU frame fields to there default values.
		 *
		 * @note  Used in the constructor and just after sending an MPDU
		 */
		void clearEPDU (void);

	private :

		/**
		 * @brief 	Couple struct-union used to simplify the write of the
		 * 			composed first field in a SV EPDU frame.
		 *
		 * @fields 	uint8_t length				-- The length of the EPDU
		 * 			uint8_t svGroup				-- The group where the EPDU comes from
		 * 			uint8_t type 				-- The type of the
		 */
		struct SV_EPDU_HEADER
		{
			uint8_t length 	: 3;
			uint8_t svGroup : 4;
			uint8_t type	: 1;
		};

		union SV_EPDU_HEADER_UINT8
		{
			uint8_t byte;
			SV_EPDU_HEADER epduHeader;
		};

		/**
		 * @brief 	Couple struct-union used to simplify the write of the
		 * 			composed first field in a SV EPDU frame.
		 *
		 * @fields 	uint8_t length				-- The length of the EPDU
		 * 			uint8_t evID				-- The identifier of the Event
		 * 			uint8_t type 				-- The type of the
		 */
		struct EV_EPDU_HEADER
		{
			uint8_t length 	: 3;
			uint8_t evId 	: 4;
			uint8_t type	: 1;
		};

		union EV_EPDU_HEADER_UINT8
		{
			uint8_t byte;
			EV_EPDU_HEADER epduHeader;
		};

	private :
		uint8_t epduOffset;
	};

}
