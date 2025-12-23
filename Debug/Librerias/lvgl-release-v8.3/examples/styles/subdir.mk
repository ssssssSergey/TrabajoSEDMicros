################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_1.c \
../Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_10.c \
../Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_11.c \
../Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_12.c \
../Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_13.c \
../Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_14.c \
../Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_15.c \
../Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_2.c \
../Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_3.c \
../Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_4.c \
../Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_5.c \
../Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_6.c \
../Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_7.c \
../Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_8.c \
../Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_9.c 

C_DEPS += \
./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_1.d \
./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_10.d \
./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_11.d \
./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_12.d \
./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_13.d \
./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_14.d \
./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_15.d \
./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_2.d \
./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_3.d \
./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_4.d \
./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_5.d \
./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_6.d \
./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_7.d \
./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_8.d \
./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_9.d 

OBJS += \
./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_1.o \
./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_10.o \
./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_11.o \
./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_12.o \
./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_13.o \
./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_14.o \
./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_15.o \
./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_2.o \
./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_3.o \
./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_4.o \
./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_5.o \
./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_6.o \
./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_7.o \
./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_8.o \
./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_9.o 


# Each subdirectory must supply rules for building sources it contributes
Librerias/lvgl-release-v8.3/examples/styles/%.o Librerias/lvgl-release-v8.3/examples/styles/%.su Librerias/lvgl-release-v8.3/examples/styles/%.cyclo: ../Librerias/lvgl-release-v8.3/examples/styles/%.c Librerias/lvgl-release-v8.3/examples/styles/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I"C:/Users/srggr/STM32CubeIDE/workspace_1.18.0/trabajo_sed_micros/Librerias/lvgl-release-v8.3" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/srggr/STM32CubeIDE/workspace_1.18.0/trabajo_sed_micros/Librerias/lvgl-release-v8.3/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-examples-2f-styles

clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-examples-2f-styles:
	-$(RM) ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_1.cyclo ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_1.d ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_1.o ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_1.su ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_10.cyclo ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_10.d ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_10.o ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_10.su ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_11.cyclo ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_11.d ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_11.o ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_11.su ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_12.cyclo ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_12.d ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_12.o ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_12.su ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_13.cyclo ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_13.d ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_13.o ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_13.su ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_14.cyclo ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_14.d ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_14.o ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_14.su ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_15.cyclo ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_15.d ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_15.o ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_15.su ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_2.cyclo ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_2.d ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_2.o ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_2.su ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_3.cyclo ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_3.d ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_3.o ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_3.su ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_4.cyclo ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_4.d ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_4.o ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_4.su ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_5.cyclo ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_5.d ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_5.o ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_5.su ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_6.cyclo ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_6.d ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_6.o ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_6.su ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_7.cyclo ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_7.d ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_7.o ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_7.su ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_8.cyclo ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_8.d ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_8.o ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_8.su ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_9.cyclo ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_9.d ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_9.o ./Librerias/lvgl-release-v8.3/examples/styles/lv_example_style_9.su

.PHONY: clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-examples-2f-styles

