#include "desenet/sensor/net.h"
#include "abstractapplication.h"
#include "networkentity.h"

using desenet::sensor::AbstractApplication;

// TODO: Uncomment for students.
//#error READ THE COMMENT HERE!
/*********************************************************************************************************
* TODO: Implement the protected methods of the AbstractApplication class here. From these you have to    *
* call the different methods on your DESENET Controller Entity implementation...                         *
*********************************************************************************************************/

// Default implementations.

void AbstractApplication::svSyncRequest()
{
	NetworkEntity::instance().svSyncRequest(this);
}

bool AbstractApplication::svPublishRequest(SvGroup group)
{
	bool added = true;
	added = NetworkEntity::instance().svPublishRequest(this, group);
	return added;
}

// No need to touch this method, it is for the joystick
void AbstractApplication::evPublishRequest(EvId id, SharedByteBuffer & evData)
{
	NetworkEntity::instance().evPublishRequest(id, evData);
}

/**
 * Default callback method for syncs
 */
void AbstractApplication::svSyncIndication(desenet::NetworkTime)
{
	// See accelerometerapplication
}

/**
 * Default callback method for SV publishes
 */
SharedByteBuffer::sizeType AbstractApplication::svPublishIndication(SvGroup, SharedByteBuffer &)
{
	// See accelerometerapplication
	return 0;
}
