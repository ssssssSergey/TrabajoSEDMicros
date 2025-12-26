################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Librerias/lvgl-release-v8.3/tests/src/test_fonts/font_1.c \
../Librerias/lvgl-release-v8.3/tests/src/test_fonts/font_2.c \
../Librerias/lvgl-release-v8.3/tests/src/test_fonts/font_3.c \
../Librerias/lvgl-release-v8.3/tests/src/test_fonts/ubuntu_font.c 

C_DEPS += \
./Librerias/lvgl-release-v8.3/tests/src/test_fonts/font_1.d \
./Librerias/lvgl-release-v8.3/tests/src/test_fonts/font_2.d \
./Librerias/lvgl-release-v8.3/tests/src/test_fonts/font_3.d \
./Librerias/lvgl-release-v8.3/tests/src/test_fonts/ubuntu_font.d 

OBJS += \
./Librerias/lvgl-release-v8.3/tests/src/test_fonts/font_1.o \
./Librerias/lvgl-release-v8.3/tests/src/test_fonts/font_2.o \
./Librerias/lvgl-release-v8.3/tests/src/test_fonts/font_3.o \
./Librerias/lvgl-release-v8.3/tests/src/test_fonts/ubuntu_font.o 


# Each subdirectory must supply rules for building sources it contributes
Librerias/lvgl-release-v8.3/tests/src/test_fonts/%.o Librerias/lvgl-release-v8.3/tests/src/test_fonts/%.su Librerias/lvgl-release-v8.3/tests/src/test_fonts/%.cyclo: ../Librerias/lvgl-release-v8.3/tests/src/test_fonts/%.c Librerias/lvgl-release-v8.3/tests/src/test_fonts/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-tests-2f-src-2f-test_fonts

clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-tests-2f-src-2f-test_fonts:
	-$(RM) ./Librerias/lvgl-release-v8.3/tests/src/test_fonts/font_1.cyclo ./Librerias/lvgl-release-v8.3/tests/src/test_fonts/font_1.d ./Librerias/lvgl-release-v8.3/tests/src/test_fonts/font_1.o ./Librerias/lvgl-release-v8.3/tests/src/test_fonts/font_1.su ./Librerias/lvgl-release-v8.3/tests/src/test_fonts/font_2.cyclo ./Librerias/lvgl-release-v8.3/tests/src/test_fonts/font_2.d ./Librerias/lvgl-release-v8.3/tests/src/test_fonts/font_2.o ./Librerias/lvgl-release-v8.3/tests/src/test_fonts/font_2.su ./Librerias/lvgl-release-v8.3/tests/src/test_fonts/font_3.cyclo ./Librerias/lvgl-release-v8.3/tests/src/test_fonts/font_3.d ./Librerias/lvgl-release-v8.3/tests/src/test_fonts/font_3.o ./Librerias/lvgl-release-v8.3/tests/src/test_fonts/font_3.su ./Librerias/lvgl-release-v8.3/tests/src/test_fonts/ubuntu_font.cyclo ./Librerias/lvgl-release-v8.3/tests/src/test_fonts/ubuntu_font.d ./Librerias/lvgl-release-v8.3/tests/src/test_fonts/ubuntu_font.o ./Librerias/lvgl-release-v8.3/tests/src/test_fonts/ubuntu_font.su

.PHONY: clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-tests-2f-src-2f-test_fonts

