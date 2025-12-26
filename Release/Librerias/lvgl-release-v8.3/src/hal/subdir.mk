################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Librerias/lvgl-release-v8.3/src/hal/lv_hal_disp.c \
../Librerias/lvgl-release-v8.3/src/hal/lv_hal_indev.c \
../Librerias/lvgl-release-v8.3/src/hal/lv_hal_tick.c 

C_DEPS += \
./Librerias/lvgl-release-v8.3/src/hal/lv_hal_disp.d \
./Librerias/lvgl-release-v8.3/src/hal/lv_hal_indev.d \
./Librerias/lvgl-release-v8.3/src/hal/lv_hal_tick.d 

OBJS += \
./Librerias/lvgl-release-v8.3/src/hal/lv_hal_disp.o \
./Librerias/lvgl-release-v8.3/src/hal/lv_hal_indev.o \
./Librerias/lvgl-release-v8.3/src/hal/lv_hal_tick.o 


# Each subdirectory must supply rules for building sources it contributes
Librerias/lvgl-release-v8.3/src/hal/%.o Librerias/lvgl-release-v8.3/src/hal/%.su Librerias/lvgl-release-v8.3/src/hal/%.cyclo: ../Librerias/lvgl-release-v8.3/src/hal/%.c Librerias/lvgl-release-v8.3/src/hal/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-src-2f-hal

clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-src-2f-hal:
	-$(RM) ./Librerias/lvgl-release-v8.3/src/hal/lv_hal_disp.cyclo ./Librerias/lvgl-release-v8.3/src/hal/lv_hal_disp.d ./Librerias/lvgl-release-v8.3/src/hal/lv_hal_disp.o ./Librerias/lvgl-release-v8.3/src/hal/lv_hal_disp.su ./Librerias/lvgl-release-v8.3/src/hal/lv_hal_indev.cyclo ./Librerias/lvgl-release-v8.3/src/hal/lv_hal_indev.d ./Librerias/lvgl-release-v8.3/src/hal/lv_hal_indev.o ./Librerias/lvgl-release-v8.3/src/hal/lv_hal_indev.su ./Librerias/lvgl-release-v8.3/src/hal/lv_hal_tick.cyclo ./Librerias/lvgl-release-v8.3/src/hal/lv_hal_tick.d ./Librerias/lvgl-release-v8.3/src/hal/lv_hal_tick.o ./Librerias/lvgl-release-v8.3/src/hal/lv_hal_tick.su

.PHONY: clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-src-2f-hal

