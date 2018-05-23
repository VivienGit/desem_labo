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

class JoystickApplication : public IJoystickObserver,
							public desenet::sensor::AbstractApplication
{
public:
	JoystickApplication();
	virtual ~JoystickApplication();

	void initialize();								///< Initializes the instance.
	void initializeRelations(Joystick * joystick);	///< Initializes all relations needed by the instance.

	static JoystickApplication & instance();		///< Returns reference to single instance.

	// desenet::AbstractApplication callback implementationprotected:
protected:
	virtual void onPositionChange( IJoystick::Position position );	///< Returns reference to single instance.


private:
	Joystick *	_pJoystick;											///< Pointer to Joystick.
};

} // namespace app

#endif
