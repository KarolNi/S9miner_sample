################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/sd/sd.c 

OBJS += \
./src/sd/sd.o 

C_DEPS += \
./src/sd/sd.d 


# Each subdirectory must supply rules for building sources it contributes
src/sd/%.o: ../src/sd/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -IE:/S9/P03_SD_TEST/SD_TEST.sdk/SD_TEST_bsp/ps7_cortexa9_0/include -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../SD_TEST_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


