#ifndef JOYSTICKAPPLICATION_H
#define JOYSTICKAPPLICATION_H

#include "platform-config.h"
#include "desenet/sensor/abstractapplication.h"
#include "../../desenet-common/platform/platform-common/board/interfaces/ijoystickobserver.h"
#include "../../desenet-common/platform/platform-common/board/interfaces/ijoystick.h"

namespace board {
	class Joystick;
}

namespace app
{


/**
 * @brief Sends Joystick values to the gateway node.
 */
class JoystickApplication : public IJoystickObserver,
							public desenet::sensor::AbstractApplication
{
public:
	JoystickApplication();							///< Set _pJoystick null at implementation
	virtual ~JoystickApplication();

	void initialize();								///< Used to call the initialization of the Joystick. (This one is called after initializeRelations in the Factory)
	void initializeRelations(Joystick * joystick);	///< Initializes all relations needed by the instance.

	//static JoystickApplication & instance();		///< The instance is created in the factory, if this one is called, it will create a second one !!!

	void start();									///< Call the start() method of the Joystick that starts the state machine

	// desenet::AbstractApplication callback implementation protected:
protected:
	virtual void onPositionChange( IJoystick::Position position );

private:
	Joystick *	_pJoystick;							///< Pointer to Joystick.
};

} // namespace app

#endif
