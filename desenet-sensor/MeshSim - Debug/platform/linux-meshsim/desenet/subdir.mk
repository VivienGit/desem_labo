################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/home/desem/Desktop/desenet-work/desenet-common/platform/linux-meshsim/desenet/nic-meshsim-wrapper.cpp \
/home/desem/Desktop/desenet-work/desenet-common/platform/linux-meshsim/desenet/nic-meshsim.cpp 

OBJS += \
./platform/linux-meshsim/desenet/nic-meshsim-wrapper.o \
./platform/linux-meshsim/desenet/nic-meshsim.o 

CPP_DEPS += \
./platform/linux-meshsim/desenet/nic-meshsim-wrapper.d \
./platform/linux-meshsim/desenet/nic-meshsim.d 


# Each subdirectory must supply rules for building sources it contributes
platform/linux-meshsim/desenet/nic-meshsim-wrapper.o: /home/desem/Desktop/desenet-work/desenet-common/platform/linux-meshsim/desenet/nic-meshsim-wrapper.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++0x -DDEBUG -DTC_MESHSIM -I/home/desem/Desktop/desenet-work/desenet-sensor/app -I/home/desem/Desktop/desenet-work/desenet-sensor/platform/linux-meshsim -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/xf -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-sensor -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/mdw -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/mdw/desenet -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/platform-common -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/platform-common/board -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/linux-meshsim -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/linux-meshsim/mcu -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/linux-meshsim/board -I/usr/include/qt5 -I/usr/include/qt5/QtNetwork -O0 -g3 -Wall -c -fmessage-length=0 -fPIC -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

platform/linux-meshsim/desenet/nic-meshsim.o: /home/desem/Desktop/desenet-work/desenet-common/platform/linux-meshsim/desenet/nic-meshsim.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++0x -DDEBUG -DTC_MESHSIM -I/home/desem/Desktop/desenet-work/desenet-sensor/app -I/home/desem/Desktop/desenet-work/desenet-sensor/platform/linux-meshsim -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/xf -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-sensor -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/mdw -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/mdw/desenet -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/platform-common -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/platform-common/board -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/linux-meshsim -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/linux-meshsim/mcu -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/linux-meshsim/board -I/usr/include/qt5 -I/usr/include/qt5/QtNetwork -O0 -g3 -Wall -c -fmessage-length=0 -fPIC -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


