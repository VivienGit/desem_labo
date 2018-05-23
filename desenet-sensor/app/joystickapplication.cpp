#include "platform-config.h"
#include "trace/trace.h"
#include "factory.h"
#include "joystickapplication.h"

using app::JoystickApplication;


JoystickApplication::JoystickApplication()
{
	_pJoystick = nullptr;					///< set pointer null at implementation
}

JoystickApplication::~JoystickApplication()
{
}

void JoystickApplication::initialize()
{
}

void JoystickApplication::initializeRelations(Joystick * joystick)
{
	_pJoystick = joystick;					///< make the pointer point to the joystick
	_pJoystick->setObserver(this);			///< set the observer
}

//static
JoystickApplication & JoystickApplication::instance()
{
	static JoystickApplication joystickApplication;

	return joystickApplication;
}


void JoystickApplication::onPositionChange(IJoystick::Position position)
{
	// Copy the current position to the evData
	hei::SharedByteBuffer evData(1);
	memcpy(&evData, &position, 1);

	// Transmit the evData to the networkentitiy across the abstractapplication
	evPublishRequest(EVID_JOYSTICK,evData);
}
