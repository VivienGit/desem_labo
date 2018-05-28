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

///< Used to call the initialization of the Joystick. (This one is called after initializeRelations in the Factory)
void JoystickApplication::initialize()
{
	_pJoystick->initialize();
}

///< Initializes all relations needed by the instance. (called in the Factory)
void JoystickApplication::initializeRelations(Joystick * joystick)
{
	_pJoystick = joystick;					///< make the pointer point to the joystick
	_pJoystick->setObserver(this);			///< set the observer
}

///< The instance is created in the factory, if this one is called, it will create a second one !!!
/*
//static
JoystickApplication & JoystickApplication::instance()
{
	static JoystickApplication joystickApplication;

	return joystickApplication;
}*/

// Transmit the evData to the networkentitiy across the abstractapplication
void JoystickApplication::onPositionChange(IJoystick::Position position)
{
	// Copy the current position to the evData
	hei::SharedByteBuffer evData(1);
	memcpy(&evData, &position, 1);

	// Transmit the evData to the networkentitiy across the abstractapplication
	evPublishRequest(EVID_JOYSTICK,evData);
}

///< Call the start() method of the Joystick that starts the state machine
void JoystickApplication::start()
{
	_pJoystick->start();		// Start state machine of the Joystick
}
