################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/home/desem/Desktop/desenet-work/desenet-common/xf/initialevent.cpp \
/home/desem/Desktop/desenet-work/desenet-common/xf/xf.cpp \
/home/desem/Desktop/desenet-work/desenet-common/xf/xfevent.cpp \
/home/desem/Desktop/desenet-work/desenet-common/xf/xfnulltransition.cpp \
/home/desem/Desktop/desenet-work/desenet-common/xf/xfreactive.cpp \
/home/desem/Desktop/desenet-work/desenet-common/xf/xfstaticevent.cpp \
/home/desem/Desktop/desenet-work/desenet-common/xf/xfthread.cpp \
/home/desem/Desktop/desenet-work/desenet-common/xf/xftimeout.cpp \
/home/desem/Desktop/desenet-work/desenet-common/xf/xftimeoutmanager.cpp 

OBJS += \
./xf/initialevent.o \
./xf/xf.o \
./xf/xfevent.o \
./xf/xfnulltransition.o \
./xf/xfreactive.o \
./xf/xfstaticevent.o \
./xf/xfthread.o \
./xf/xftimeout.o \
./xf/xftimeoutmanager.o 

CPP_DEPS += \
./xf/initialevent.d \
./xf/xf.d \
./xf/xfevent.d \
./xf/xfnulltransition.d \
./xf/xfreactive.d \
./xf/xfstaticevent.d \
./xf/xfthread.d \
./xf/xftimeout.d \
./xf/xftimeoutmanager.d 


# Each subdirectory must supply rules for building sources it contributes
xf/initialevent.o: /home/desem/Desktop/desenet-work/desenet-common/xf/initialevent.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++0x -DDEBUG -DTC_MESHSIM -I/home/desem/Desktop/desenet-work/desenet-sensor/app -I/home/desem/Desktop/desenet-work/desenet-sensor/platform/linux-meshsim -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/xf -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-sensor -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/mdw -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/mdw/desenet -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/platform-common -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/platform-common/board -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/linux-meshsim -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/linux-meshsim/mcu -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/linux-meshsim/board -I/usr/include/qt5 -I/usr/include/qt5/QtNetwork -O0 -g3 -Wall -c -fmessage-length=0 -fPIC -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

xf/xf.o: /home/desem/Desktop/desenet-work/desenet-common/xf/xf.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++0x -DDEBUG -DTC_MESHSIM -I/home/desem/Desktop/desenet-work/desenet-sensor/app -I/home/desem/Desktop/desenet-work/desenet-sensor/platform/linux-meshsim -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/xf -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-sensor -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/mdw -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/mdw/desenet -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/platform-common -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/platform-common/board -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/linux-meshsim -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/linux-meshsim/mcu -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/linux-meshsim/board -I/usr/include/qt5 -I/usr/include/qt5/QtNetwork -O0 -g3 -Wall -c -fmessage-length=0 -fPIC -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

xf/xfevent.o: /home/desem/Desktop/desenet-work/desenet-common/xf/xfevent.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++0x -DDEBUG -DTC_MESHSIM -I/home/desem/Desktop/desenet-work/desenet-sensor/app -I/home/desem/Desktop/desenet-work/desenet-sensor/platform/linux-meshsim -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/xf -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-sensor -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/mdw -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/mdw/desenet -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/platform-common -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/platform-common/board -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/linux-meshsim -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/linux-meshsim/mcu -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/linux-meshsim/board -I/usr/include/qt5 -I/usr/include/qt5/QtNetwork -O0 -g3 -Wall -c -fmessage-length=0 -fPIC -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

xf/xfnulltransition.o: /home/desem/Desktop/desenet-work/desenet-common/xf/xfnulltransition.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++0x -DDEBUG -DTC_MESHSIM -I/home/desem/Desktop/desenet-work/desenet-sensor/app -I/home/desem/Desktop/desenet-work/desenet-sensor/platform/linux-meshsim -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/xf -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-sensor -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/mdw -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/mdw/desenet -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/platform-common -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/platform-common/board -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/linux-meshsim -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/linux-meshsim/mcu -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/linux-meshsim/board -I/usr/include/qt5 -I/usr/include/qt5/QtNetwork -O0 -g3 -Wall -c -fmessage-length=0 -fPIC -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

xf/xfreactive.o: /home/desem/Desktop/desenet-work/desenet-common/xf/xfreactive.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++0x -DDEBUG -DTC_MESHSIM -I/home/desem/Desktop/desenet-work/desenet-sensor/app -I/home/desem/Desktop/desenet-work/desenet-sensor/platform/linux-meshsim -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/xf -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-sensor -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/mdw -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/mdw/desenet -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/platform-common -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/platform-common/board -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/linux-meshsim -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/linux-meshsim/mcu -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/linux-meshsim/board -I/usr/include/qt5 -I/usr/include/qt5/QtNetwork -O0 -g3 -Wall -c -fmessage-length=0 -fPIC -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

xf/xfstaticevent.o: /home/desem/Desktop/desenet-work/desenet-common/xf/xfstaticevent.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++0x -DDEBUG -DTC_MESHSIM -I/home/desem/Desktop/desenet-work/desenet-sensor/app -I/home/desem/Desktop/desenet-work/desenet-sensor/platform/linux-meshsim -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/xf -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-sensor -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/mdw -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/mdw/desenet -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/platform-common -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/platform-common/board -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/linux-meshsim -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/linux-meshsim/mcu -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/linux-meshsim/board -I/usr/include/qt5 -I/usr/include/qt5/QtNetwork -O0 -g3 -Wall -c -fmessage-length=0 -fPIC -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

xf/xfthread.o: /home/desem/Desktop/desenet-work/desenet-common/xf/xfthread.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++0x -DDEBUG -DTC_MESHSIM -I/home/desem/Desktop/desenet-work/desenet-sensor/app -I/home/desem/Desktop/desenet-work/desenet-sensor/platform/linux-meshsim -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/xf -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-sensor -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/mdw -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/mdw/desenet -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/platform-common -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/platform-common/board -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/linux-meshsim -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/linux-meshsim/mcu -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/linux-meshsim/board -I/usr/include/qt5 -I/usr/include/qt5/QtNetwork -O0 -g3 -Wall -c -fmessage-length=0 -fPIC -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

xf/xftimeout.o: /home/desem/Desktop/desenet-work/desenet-common/xf/xftimeout.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++0x -DDEBUG -DTC_MESHSIM -I/home/desem/Desktop/desenet-work/desenet-sensor/app -I/home/desem/Desktop/desenet-work/desenet-sensor/platform/linux-meshsim -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/xf -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-sensor -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/mdw -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/mdw/desenet -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/platform-common -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/platform-common/board -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/linux-meshsim -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/linux-meshsim/mcu -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/linux-meshsim/board -I/usr/include/qt5 -I/usr/include/qt5/QtNetwork -O0 -g3 -Wall -c -fmessage-length=0 -fPIC -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

xf/xftimeoutmanager.o: /home/desem/Desktop/desenet-work/desenet-common/xf/xftimeoutmanager.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++0x -DDEBUG -DTC_MESHSIM -I/home/desem/Desktop/desenet-work/desenet-sensor/app -I/home/desem/Desktop/desenet-work/desenet-sensor/platform/linux-meshsim -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/xf -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-sensor -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/mdw -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/mdw/desenet -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/platform-common -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/platform-common/board -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/linux-meshsim -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/linux-meshsim/mcu -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/linux-meshsim/board -I/usr/include/qt5 -I/usr/include/qt5/QtNetwork -O0 -g3 -Wall -c -fmessage-length=0 -fPIC -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


