################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_1.c \
../Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_2.c \
../Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_3.c \
../Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_4.c \
../Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_5.c \
../Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_6.c 

C_DEPS += \
./Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_1.d \
./Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_2.d \
./Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_3.d \
./Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_4.d \
./Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_5.d \
./Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_6.d 

OBJS += \
./Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_1.o \
./Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_2.o \
./Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_3.o \
./Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_4.o \
./Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_5.o \
./Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_6.o 


# Each subdirectory must supply rules for building sources it contributes
Librerias/lvgl-release-v8.3/examples/scroll/%.o Librerias/lvgl-release-v8.3/examples/scroll/%.su Librerias/lvgl-release-v8.3/examples/scroll/%.cyclo: ../Librerias/lvgl-release-v8.3/examples/scroll/%.c Librerias/lvgl-release-v8.3/examples/scroll/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I"C:/Users/srggr/STM32CubeIDE/workspace_1.18.0/trabajo_sed_micros/Librerias/lvgl-release-v8.3" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/srggr/STM32CubeIDE/workspace_1.18.0/trabajo_sed_micros/Librerias/lvgl-release-v8.3/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-examples-2f-scroll

clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-examples-2f-scroll:
	-$(RM) ./Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_1.cyclo ./Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_1.d ./Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_1.o ./Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_1.su ./Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_2.cyclo ./Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_2.d ./Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_2.o ./Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_2.su ./Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_3.cyclo ./Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_3.d ./Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_3.o ./Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_3.su ./Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_4.cyclo ./Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_4.d ./Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_4.o ./Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_4.su ./Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_5.cyclo ./Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_5.d ./Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_5.o ./Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_5.su ./Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_6.cyclo ./Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_6.d ./Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_6.o ./Librerias/lvgl-release-v8.3/examples/scroll/lv_example_scroll_6.su

.PHONY: clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-examples-2f-scroll

