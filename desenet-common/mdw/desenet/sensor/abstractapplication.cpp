#include "desenet/sensor/net.h"
#include "abstractapplication.h"
#include "networkentity.h"

using desenet::sensor::AbstractApplication;

// Registers the application at the DESENET stack in order to get synchronized.
void AbstractApplication::svSyncRequest()
{
	NetworkEntity::instance().svSyncRequest(this);
}

// Using this method an application can ask to publish sampled values for the given group.
bool AbstractApplication::svPublishRequest(SvGroup group)
{
	bool added = true;
	added = NetworkEntity::instance().svPublishRequest(this, group);
	return added;
}

// Publishes the given event
void AbstractApplication::evPublishRequest(EvId id, SharedByteBuffer & evData)
{
	NetworkEntity::instance().evPublishRequest(id, evData);
}

/**
 * Default callback method for Sync
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
