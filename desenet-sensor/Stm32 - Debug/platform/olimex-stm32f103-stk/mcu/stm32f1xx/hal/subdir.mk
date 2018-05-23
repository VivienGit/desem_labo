################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/home/desem/Desktop/desenet-work/desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/hal/spi.cpp \
/home/desem/Desktop/desenet-work/desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/hal/timeslotmanager.cpp \
/home/desem/Desktop/desenet-work/desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/hal/uart.cpp 

C_SRCS += \
/home/desem/Desktop/desenet-work/desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/hal/i2c.c 

OBJS += \
./platform/olimex-stm32f103-stk/mcu/stm32f1xx/hal/i2c.o \
./platform/olimex-stm32f103-stk/mcu/stm32f1xx/hal/spi.o \
./platform/olimex-stm32f103-stk/mcu/stm32f1xx/hal/timeslotmanager.o \
./platform/olimex-stm32f103-stk/mcu/stm32f1xx/hal/uart.o 

C_DEPS += \
./platform/olimex-stm32f103-stk/mcu/stm32f1xx/hal/i2c.d 

CPP_DEPS += \
./platform/olimex-stm32f103-stk/mcu/stm32f1xx/hal/spi.d \
./platform/olimex-stm32f103-stk/mcu/stm32f1xx/hal/timeslotmanager.d \
./platform/olimex-stm32f103-stk/mcu/stm32f1xx/hal/uart.d 


# Each subdirectory must supply rules for building sources it contributes
platform/olimex-stm32f103-stk/mcu/stm32f1xx/hal/i2c.o: /home/desem/Desktop/desenet-work/desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/hal/i2c.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DUSE_FULL_ASSERT -DSTM32F10X_HD -DUSE_STDPERIPH_DRIVER -DHSE_VALUE=8000000 -DTC_STM32 -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/system/include -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/xf -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/system/include/cmsis -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/system/include/stm32f1-stdperiph -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-sensor/platform/olimex-stm32f103-stk -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/target -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/critical -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-sensor -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/interfaces -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/mdw -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/desenet -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/mdw/desenet -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/platform-common -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/platform-common/board -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/board -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

platform/olimex-stm32f103-stk/mcu/stm32f1xx/hal/spi.o: /home/desem/Desktop/desenet-work/desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/hal/spi.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DUSE_FULL_ASSERT -DSTM32F10X_HD -DUSE_STDPERIPH_DRIVER -DHSE_VALUE=8000000 -DTC_STM32 -I/home/desem/Desktop/desenet-work/desenet-sensor/app -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/system/include -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/xf -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/system/include/cmsis -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/system/include/stm32f1-stdperiph -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-sensor/platform/olimex-stm32f103-stk -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/target -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/critical -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-sensor -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/mdw -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/desenet -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/mdw/desenet -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/platform-common -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/platform-common/board -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/board -std=gnu++11 -fabi-version=0 -fno-exceptions -fno-rtti -fno-use-cxa-atexit -fno-threadsafe-statics -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

platform/olimex-stm32f103-stk/mcu/stm32f1xx/hal/timeslotmanager.o: /home/desem/Desktop/desenet-work/desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/hal/timeslotmanager.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DUSE_FULL_ASSERT -DSTM32F10X_HD -DUSE_STDPERIPH_DRIVER -DHSE_VALUE=8000000 -DTC_STM32 -I/home/desem/Desktop/desenet-work/desenet-sensor/app -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/system/include -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/xf -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/system/include/cmsis -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/system/include/stm32f1-stdperiph -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-sensor/platform/olimex-stm32f103-stk -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/target -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/critical -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-sensor -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/mdw -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/desenet -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/mdw/desenet -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/platform-common -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/platform-common/board -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/board -std=gnu++11 -fabi-version=0 -fno-exceptions -fno-rtti -fno-use-cxa-atexit -fno-threadsafe-statics -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

platform/olimex-stm32f103-stk/mcu/stm32f1xx/hal/uart.o: /home/desem/Desktop/desenet-work/desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/hal/uart.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DUSE_FULL_ASSERT -DSTM32F10X_HD -DUSE_STDPERIPH_DRIVER -DHSE_VALUE=8000000 -DTC_STM32 -I/home/desem/Desktop/desenet-work/desenet-sensor/app -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/system/include -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/xf -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/system/include/cmsis -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/system/include/stm32f1-stdperiph -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-sensor/platform/olimex-stm32f103-stk -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/target -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/mcu/stm32f1xx/critical -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-sensor -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/mdw -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/desenet -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/mdw/desenet -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/platform-common -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/platform-common/board -I/home/desem/Desktop/desenet-work/desenet-sensor/../desenet-common/platform/olimex-stm32f103-stk/board -std=gnu++11 -fabi-version=0 -fno-exceptions -fno-rtti -fno-use-cxa-atexit -fno-threadsafe-statics -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


