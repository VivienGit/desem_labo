################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/home/desem/Desktop/desenet-work/desenet-common/mdw/desenet/sensor/abstractapplication.cpp \
/home/desem/Desktop/desenet-work/desenet-common/mdw/desenet/sensor/net.cpp \
/home/desem/Desktop/desenet-work/desenet-common/mdw/desenet/sensor/networkentity.cpp 

OBJS += \
./mdw/desenet/sensor/abstractapplication.o \
./mdw/desenet/sensor/net.o \
./mdw/desenet/sensor/networkentity.o 

CPP_DEPS += \
./mdw/desenet/sensor/abstractapplication.d \
./mdw/desenet/sensor/net.d \
./mdw/desenet/sensor/networkentity.d 


# Each subdirectory must supply rules for building sources it contributes
mdw/desenet/sensor/abstractapplication.o: /home/desem/Desktop/desenet-work/desenet-common/mdw/desenet/sensor/abstractapplication.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DUSE_FULL_ASSERT -DSTM32F10X_HD -DUSE_STDPERIPH_DRIVER -DHSE_VALUE=8000000 -DTC_STM32 -I/home/desem/Desktop/desenet-work/desenet-sensor/app -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/system/include -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/xf -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/system/include/cmsis -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/system/include/stm32f1-stdperiph -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-sensor/platform/olimex-stm32f103-stk -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/target -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/critical -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-sensor -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/mdw -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/desenet -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/mdw/desenet -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/platform-common -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/platform-common/board -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/board -std=gnu++11 -fabi-version=0 -fno-exceptions -fno-rtti -fno-use-cxa-atexit -fno-threadsafe-statics -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

mdw/desenet/sensor/net.o: /home/desem/Desktop/desenet-work/desenet-common/mdw/desenet/sensor/net.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DUSE_FULL_ASSERT -DSTM32F10X_HD -DUSE_STDPERIPH_DRIVER -DHSE_VALUE=8000000 -DTC_STM32 -I/home/desem/Desktop/desenet-work/desenet-sensor/app -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/system/include -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/xf -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/system/include/cmsis -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/system/include/stm32f1-stdperiph -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-sensor/platform/olimex-stm32f103-stk -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/target -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/critical -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-sensor -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/mdw -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/desenet -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/mdw/desenet -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/platform-common -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/platform-common/board -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/board -std=gnu++11 -fabi-version=0 -fno-exceptions -fno-rtti -fno-use-cxa-atexit -fno-threadsafe-statics -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

mdw/desenet/sensor/networkentity.o: /home/desem/Desktop/desenet-work/desenet-common/mdw/desenet/sensor/networkentity.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DUSE_FULL_ASSERT -DSTM32F10X_HD -DUSE_STDPERIPH_DRIVER -DHSE_VALUE=8000000 -DTC_STM32 -I/home/desem/Desktop/desenet-work/desenet-sensor/app -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/system/include -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/xf -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/system/include/cmsis -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/system/include/stm32f1-stdperiph -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-sensor/platform/olimex-stm32f103-stk -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/target -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/critical -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-sensor -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/mdw -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/desenet -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/mdw/desenet -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/platform-common -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/platform-common/board -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/board -std=gnu++11 -fabi-version=0 -fno-exceptions -fno-rtti -fno-use-cxa-atexit -fno-threadsafe-statics -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


