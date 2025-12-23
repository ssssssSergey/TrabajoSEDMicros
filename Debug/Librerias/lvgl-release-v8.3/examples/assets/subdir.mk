################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Librerias/lvgl-release-v8.3/examples/assets/animimg001.c \
../Librerias/lvgl-release-v8.3/examples/assets/animimg002.c \
../Librerias/lvgl-release-v8.3/examples/assets/animimg003.c \
../Librerias/lvgl-release-v8.3/examples/assets/img_caret_down.c \
../Librerias/lvgl-release-v8.3/examples/assets/img_cogwheel_alpha16.c \
../Librerias/lvgl-release-v8.3/examples/assets/img_cogwheel_argb.c \
../Librerias/lvgl-release-v8.3/examples/assets/img_cogwheel_chroma_keyed.c \
../Librerias/lvgl-release-v8.3/examples/assets/img_cogwheel_indexed16.c \
../Librerias/lvgl-release-v8.3/examples/assets/img_cogwheel_rgb.c \
../Librerias/lvgl-release-v8.3/examples/assets/img_hand.c \
../Librerias/lvgl-release-v8.3/examples/assets/img_skew_strip.c \
../Librerias/lvgl-release-v8.3/examples/assets/img_star.c \
../Librerias/lvgl-release-v8.3/examples/assets/imgbtn_left.c \
../Librerias/lvgl-release-v8.3/examples/assets/imgbtn_mid.c \
../Librerias/lvgl-release-v8.3/examples/assets/imgbtn_right.c 

C_DEPS += \
./Librerias/lvgl-release-v8.3/examples/assets/animimg001.d \
./Librerias/lvgl-release-v8.3/examples/assets/animimg002.d \
./Librerias/lvgl-release-v8.3/examples/assets/animimg003.d \
./Librerias/lvgl-release-v8.3/examples/assets/img_caret_down.d \
./Librerias/lvgl-release-v8.3/examples/assets/img_cogwheel_alpha16.d \
./Librerias/lvgl-release-v8.3/examples/assets/img_cogwheel_argb.d \
./Librerias/lvgl-release-v8.3/examples/assets/img_cogwheel_chroma_keyed.d \
./Librerias/lvgl-release-v8.3/examples/assets/img_cogwheel_indexed16.d \
./Librerias/lvgl-release-v8.3/examples/assets/img_cogwheel_rgb.d \
./Librerias/lvgl-release-v8.3/examples/assets/img_hand.d \
./Librerias/lvgl-release-v8.3/examples/assets/img_skew_strip.d \
./Librerias/lvgl-release-v8.3/examples/assets/img_star.d \
./Librerias/lvgl-release-v8.3/examples/assets/imgbtn_left.d \
./Librerias/lvgl-release-v8.3/examples/assets/imgbtn_mid.d \
./Librerias/lvgl-release-v8.3/examples/assets/imgbtn_right.d 

OBJS += \
./Librerias/lvgl-release-v8.3/examples/assets/animimg001.o \
./Librerias/lvgl-release-v8.3/examples/assets/animimg002.o \
./Librerias/lvgl-release-v8.3/examples/assets/animimg003.o \
./Librerias/lvgl-release-v8.3/examples/assets/img_caret_down.o \
./Librerias/lvgl-release-v8.3/examples/assets/img_cogwheel_alpha16.o \
./Librerias/lvgl-release-v8.3/examples/assets/img_cogwheel_argb.o \
./Librerias/lvgl-release-v8.3/examples/assets/img_cogwheel_chroma_keyed.o \
./Librerias/lvgl-release-v8.3/examples/assets/img_cogwheel_indexed16.o \
./Librerias/lvgl-release-v8.3/examples/assets/img_cogwheel_rgb.o \
./Librerias/lvgl-release-v8.3/examples/assets/img_hand.o \
./Librerias/lvgl-release-v8.3/examples/assets/img_skew_strip.o \
./Librerias/lvgl-release-v8.3/examples/assets/img_star.o \
./Librerias/lvgl-release-v8.3/examples/assets/imgbtn_left.o \
./Librerias/lvgl-release-v8.3/examples/assets/imgbtn_mid.o \
./Librerias/lvgl-release-v8.3/examples/assets/imgbtn_right.o 


# Each subdirectory must supply rules for building sources it contributes
Librerias/lvgl-release-v8.3/examples/assets/%.o Librerias/lvgl-release-v8.3/examples/assets/%.su Librerias/lvgl-release-v8.3/examples/assets/%.cyclo: ../Librerias/lvgl-release-v8.3/examples/assets/%.c Librerias/lvgl-release-v8.3/examples/assets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I"C:/Users/srggr/STM32CubeIDE/workspace_1.18.0/trabajo_sed_micros/Librerias/lvgl-release-v8.3" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/srggr/STM32CubeIDE/workspace_1.18.0/trabajo_sed_micros/Librerias/lvgl-release-v8.3/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-examples-2f-assets

clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-examples-2f-assets:
	-$(RM) ./Librerias/lvgl-release-v8.3/examples/assets/animimg001.cyclo ./Librerias/lvgl-release-v8.3/examples/assets/animimg001.d ./Librerias/lvgl-release-v8.3/examples/assets/animimg001.o ./Librerias/lvgl-release-v8.3/examples/assets/animimg001.su ./Librerias/lvgl-release-v8.3/examples/assets/animimg002.cyclo ./Librerias/lvgl-release-v8.3/examples/assets/animimg002.d ./Librerias/lvgl-release-v8.3/examples/assets/animimg002.o ./Librerias/lvgl-release-v8.3/examples/assets/animimg002.su ./Librerias/lvgl-release-v8.3/examples/assets/animimg003.cyclo ./Librerias/lvgl-release-v8.3/examples/assets/animimg003.d ./Librerias/lvgl-release-v8.3/examples/assets/animimg003.o ./Librerias/lvgl-release-v8.3/examples/assets/animimg003.su ./Librerias/lvgl-release-v8.3/examples/assets/img_caret_down.cyclo ./Librerias/lvgl-release-v8.3/examples/assets/img_caret_down.d ./Librerias/lvgl-release-v8.3/examples/assets/img_caret_down.o ./Librerias/lvgl-release-v8.3/examples/assets/img_caret_down.su ./Librerias/lvgl-release-v8.3/examples/assets/img_cogwheel_alpha16.cyclo ./Librerias/lvgl-release-v8.3/examples/assets/img_cogwheel_alpha16.d ./Librerias/lvgl-release-v8.3/examples/assets/img_cogwheel_alpha16.o ./Librerias/lvgl-release-v8.3/examples/assets/img_cogwheel_alpha16.su ./Librerias/lvgl-release-v8.3/examples/assets/img_cogwheel_argb.cyclo ./Librerias/lvgl-release-v8.3/examples/assets/img_cogwheel_argb.d ./Librerias/lvgl-release-v8.3/examples/assets/img_cogwheel_argb.o ./Librerias/lvgl-release-v8.3/examples/assets/img_cogwheel_argb.su ./Librerias/lvgl-release-v8.3/examples/assets/img_cogwheel_chroma_keyed.cyclo ./Librerias/lvgl-release-v8.3/examples/assets/img_cogwheel_chroma_keyed.d ./Librerias/lvgl-release-v8.3/examples/assets/img_cogwheel_chroma_keyed.o ./Librerias/lvgl-release-v8.3/examples/assets/img_cogwheel_chroma_keyed.su ./Librerias/lvgl-release-v8.3/examples/assets/img_cogwheel_indexed16.cyclo ./Librerias/lvgl-release-v8.3/examples/assets/img_cogwheel_indexed16.d ./Librerias/lvgl-release-v8.3/examples/assets/img_cogwheel_indexed16.o ./Librerias/lvgl-release-v8.3/examples/assets/img_cogwheel_indexed16.su ./Librerias/lvgl-release-v8.3/examples/assets/img_cogwheel_rgb.cyclo ./Librerias/lvgl-release-v8.3/examples/assets/img_cogwheel_rgb.d ./Librerias/lvgl-release-v8.3/examples/assets/img_cogwheel_rgb.o ./Librerias/lvgl-release-v8.3/examples/assets/img_cogwheel_rgb.su ./Librerias/lvgl-release-v8.3/examples/assets/img_hand.cyclo ./Librerias/lvgl-release-v8.3/examples/assets/img_hand.d ./Librerias/lvgl-release-v8.3/examples/assets/img_hand.o ./Librerias/lvgl-release-v8.3/examples/assets/img_hand.su ./Librerias/lvgl-release-v8.3/examples/assets/img_skew_strip.cyclo ./Librerias/lvgl-release-v8.3/examples/assets/img_skew_strip.d ./Librerias/lvgl-release-v8.3/examples/assets/img_skew_strip.o ./Librerias/lvgl-release-v8.3/examples/assets/img_skew_strip.su ./Librerias/lvgl-release-v8.3/examples/assets/img_star.cyclo ./Librerias/lvgl-release-v8.3/examples/assets/img_star.d ./Librerias/lvgl-release-v8.3/examples/assets/img_star.o ./Librerias/lvgl-release-v8.3/examples/assets/img_star.su ./Librerias/lvgl-release-v8.3/examples/assets/imgbtn_left.cyclo ./Librerias/lvgl-release-v8.3/examples/assets/imgbtn_left.d ./Librerias/lvgl-release-v8.3/examples/assets/imgbtn_left.o ./Librerias/lvgl-release-v8.3/examples/assets/imgbtn_left.su ./Librerias/lvgl-release-v8.3/examples/assets/imgbtn_mid.cyclo ./Librerias/lvgl-release-v8.3/examples/assets/imgbtn_mid.d ./Librerias/lvgl-release-v8.3/examples/assets/imgbtn_mid.o ./Librerias/lvgl-release-v8.3/examples/assets/imgbtn_mid.su ./Librerias/lvgl-release-v8.3/examples/assets/imgbtn_right.cyclo ./Librerias/lvgl-release-v8.3/examples/assets/imgbtn_right.d ./Librerias/lvgl-release-v8.3/examples/assets/imgbtn_right.o ./Librerias/lvgl-release-v8.3/examples/assets/imgbtn_right.su

.PHONY: clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-examples-2f-assets

