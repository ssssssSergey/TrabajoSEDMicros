################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw.c \
../Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_arc.c \
../Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_blend.c \
../Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_dither.c \
../Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_gradient.c \
../Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_img.c \
../Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_layer.c \
../Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_letter.c \
../Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_line.c \
../Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_polygon.c \
../Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_rect.c \
../Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_transform.c 

C_DEPS += \
./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw.d \
./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_arc.d \
./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_blend.d \
./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_dither.d \
./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_gradient.d \
./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_img.d \
./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_layer.d \
./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_letter.d \
./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_line.d \
./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_polygon.d \
./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_rect.d \
./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_transform.d 

OBJS += \
./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw.o \
./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_arc.o \
./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_blend.o \
./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_dither.o \
./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_gradient.o \
./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_img.o \
./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_layer.o \
./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_letter.o \
./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_line.o \
./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_polygon.o \
./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_rect.o \
./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_transform.o 


# Each subdirectory must supply rules for building sources it contributes
Librerias/lvgl-release-v8.3/src/draw/sw/%.o Librerias/lvgl-release-v8.3/src/draw/sw/%.su Librerias/lvgl-release-v8.3/src/draw/sw/%.cyclo: ../Librerias/lvgl-release-v8.3/src/draw/sw/%.c Librerias/lvgl-release-v8.3/src/draw/sw/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I"C:/Users/srggr/STM32CubeIDE/workspace_1.18.0/trabajo_sed_micros/Librerias/lvgl-release-v8.3" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/srggr/STM32CubeIDE/workspace_1.18.0/trabajo_sed_micros/Librerias/lvgl-release-v8.3/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-src-2f-draw-2f-sw

clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-src-2f-draw-2f-sw:
	-$(RM) ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw.cyclo ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw.d ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw.o ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw.su ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_arc.cyclo ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_arc.d ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_arc.o ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_arc.su ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_blend.cyclo ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_blend.d ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_blend.o ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_blend.su ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_dither.cyclo ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_dither.d ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_dither.o ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_dither.su ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_gradient.cyclo ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_gradient.d ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_gradient.o ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_gradient.su ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_img.cyclo ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_img.d ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_img.o ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_img.su ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_layer.cyclo ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_layer.d ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_layer.o ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_layer.su ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_letter.cyclo ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_letter.d ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_letter.o ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_letter.su ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_line.cyclo ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_line.d ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_line.o ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_line.su ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_polygon.cyclo ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_polygon.d ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_polygon.o ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_polygon.su ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_rect.cyclo ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_rect.d ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_rect.o ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_rect.su ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_transform.cyclo ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_transform.d ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_transform.o ./Librerias/lvgl-release-v8.3/src/draw/sw/lv_draw_sw_transform.su

.PHONY: clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-src-2f-draw-2f-sw

