################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Librerias/lvgl-release-v8.3/src/extra/widgets/span/lv_span.c 

C_DEPS += \
./Librerias/lvgl-release-v8.3/src/extra/widgets/span/lv_span.d 

OBJS += \
./Librerias/lvgl-release-v8.3/src/extra/widgets/span/lv_span.o 


# Each subdirectory must supply rules for building sources it contributes
Librerias/lvgl-release-v8.3/src/extra/widgets/span/%.o Librerias/lvgl-release-v8.3/src/extra/widgets/span/%.su Librerias/lvgl-release-v8.3/src/extra/widgets/span/%.cyclo: ../Librerias/lvgl-release-v8.3/src/extra/widgets/span/%.c Librerias/lvgl-release-v8.3/src/extra/widgets/span/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I"C:/Users/srggr/STM32CubeIDE/workspace_1.18.0/trabajo_sed_micros/Librerias/lvgl-release-v8.3" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/srggr/STM32CubeIDE/workspace_1.18.0/trabajo_sed_micros/Librerias/lvgl-release-v8.3/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-src-2f-extra-2f-widgets-2f-span

clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-src-2f-extra-2f-widgets-2f-span:
	-$(RM) ./Librerias/lvgl-release-v8.3/src/extra/widgets/span/lv_span.cyclo ./Librerias/lvgl-release-v8.3/src/extra/widgets/span/lv_span.d ./Librerias/lvgl-release-v8.3/src/extra/widgets/span/lv_span.o ./Librerias/lvgl-release-v8.3/src/extra/widgets/span/lv_span.su

.PHONY: clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-src-2f-extra-2f-widgets-2f-span

