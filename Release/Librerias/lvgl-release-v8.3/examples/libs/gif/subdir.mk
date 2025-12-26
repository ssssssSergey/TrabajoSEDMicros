################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Librerias/lvgl-release-v8.3/examples/libs/gif/img_bulb_gif.c \
../Librerias/lvgl-release-v8.3/examples/libs/gif/lv_example_gif_1.c 

C_DEPS += \
./Librerias/lvgl-release-v8.3/examples/libs/gif/img_bulb_gif.d \
./Librerias/lvgl-release-v8.3/examples/libs/gif/lv_example_gif_1.d 

OBJS += \
./Librerias/lvgl-release-v8.3/examples/libs/gif/img_bulb_gif.o \
./Librerias/lvgl-release-v8.3/examples/libs/gif/lv_example_gif_1.o 


# Each subdirectory must supply rules for building sources it contributes
Librerias/lvgl-release-v8.3/examples/libs/gif/%.o Librerias/lvgl-release-v8.3/examples/libs/gif/%.su Librerias/lvgl-release-v8.3/examples/libs/gif/%.cyclo: ../Librerias/lvgl-release-v8.3/examples/libs/gif/%.c Librerias/lvgl-release-v8.3/examples/libs/gif/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-examples-2f-libs-2f-gif

clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-examples-2f-libs-2f-gif:
	-$(RM) ./Librerias/lvgl-release-v8.3/examples/libs/gif/img_bulb_gif.cyclo ./Librerias/lvgl-release-v8.3/examples/libs/gif/img_bulb_gif.d ./Librerias/lvgl-release-v8.3/examples/libs/gif/img_bulb_gif.o ./Librerias/lvgl-release-v8.3/examples/libs/gif/img_bulb_gif.su ./Librerias/lvgl-release-v8.3/examples/libs/gif/lv_example_gif_1.cyclo ./Librerias/lvgl-release-v8.3/examples/libs/gif/lv_example_gif_1.d ./Librerias/lvgl-release-v8.3/examples/libs/gif/lv_example_gif_1.o ./Librerias/lvgl-release-v8.3/examples/libs/gif/lv_example_gif_1.su

.PHONY: clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-examples-2f-libs-2f-gif

