################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Librerias/lvgl-release-v8.3/src/draw/lv_draw.c \
../Librerias/lvgl-release-v8.3/src/draw/lv_draw_arc.c \
../Librerias/lvgl-release-v8.3/src/draw/lv_draw_img.c \
../Librerias/lvgl-release-v8.3/src/draw/lv_draw_label.c \
../Librerias/lvgl-release-v8.3/src/draw/lv_draw_layer.c \
../Librerias/lvgl-release-v8.3/src/draw/lv_draw_line.c \
../Librerias/lvgl-release-v8.3/src/draw/lv_draw_mask.c \
../Librerias/lvgl-release-v8.3/src/draw/lv_draw_rect.c \
../Librerias/lvgl-release-v8.3/src/draw/lv_draw_transform.c \
../Librerias/lvgl-release-v8.3/src/draw/lv_draw_triangle.c \
../Librerias/lvgl-release-v8.3/src/draw/lv_img_buf.c \
../Librerias/lvgl-release-v8.3/src/draw/lv_img_cache.c \
../Librerias/lvgl-release-v8.3/src/draw/lv_img_decoder.c 

C_DEPS += \
./Librerias/lvgl-release-v8.3/src/draw/lv_draw.d \
./Librerias/lvgl-release-v8.3/src/draw/lv_draw_arc.d \
./Librerias/lvgl-release-v8.3/src/draw/lv_draw_img.d \
./Librerias/lvgl-release-v8.3/src/draw/lv_draw_label.d \
./Librerias/lvgl-release-v8.3/src/draw/lv_draw_layer.d \
./Librerias/lvgl-release-v8.3/src/draw/lv_draw_line.d \
./Librerias/lvgl-release-v8.3/src/draw/lv_draw_mask.d \
./Librerias/lvgl-release-v8.3/src/draw/lv_draw_rect.d \
./Librerias/lvgl-release-v8.3/src/draw/lv_draw_transform.d \
./Librerias/lvgl-release-v8.3/src/draw/lv_draw_triangle.d \
./Librerias/lvgl-release-v8.3/src/draw/lv_img_buf.d \
./Librerias/lvgl-release-v8.3/src/draw/lv_img_cache.d \
./Librerias/lvgl-release-v8.3/src/draw/lv_img_decoder.d 

OBJS += \
./Librerias/lvgl-release-v8.3/src/draw/lv_draw.o \
./Librerias/lvgl-release-v8.3/src/draw/lv_draw_arc.o \
./Librerias/lvgl-release-v8.3/src/draw/lv_draw_img.o \
./Librerias/lvgl-release-v8.3/src/draw/lv_draw_label.o \
./Librerias/lvgl-release-v8.3/src/draw/lv_draw_layer.o \
./Librerias/lvgl-release-v8.3/src/draw/lv_draw_line.o \
./Librerias/lvgl-release-v8.3/src/draw/lv_draw_mask.o \
./Librerias/lvgl-release-v8.3/src/draw/lv_draw_rect.o \
./Librerias/lvgl-release-v8.3/src/draw/lv_draw_transform.o \
./Librerias/lvgl-release-v8.3/src/draw/lv_draw_triangle.o \
./Librerias/lvgl-release-v8.3/src/draw/lv_img_buf.o \
./Librerias/lvgl-release-v8.3/src/draw/lv_img_cache.o \
./Librerias/lvgl-release-v8.3/src/draw/lv_img_decoder.o 


# Each subdirectory must supply rules for building sources it contributes
Librerias/lvgl-release-v8.3/src/draw/%.o Librerias/lvgl-release-v8.3/src/draw/%.su Librerias/lvgl-release-v8.3/src/draw/%.cyclo: ../Librerias/lvgl-release-v8.3/src/draw/%.c Librerias/lvgl-release-v8.3/src/draw/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-src-2f-draw

clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-src-2f-draw:
	-$(RM) ./Librerias/lvgl-release-v8.3/src/draw/lv_draw.cyclo ./Librerias/lvgl-release-v8.3/src/draw/lv_draw.d ./Librerias/lvgl-release-v8.3/src/draw/lv_draw.o ./Librerias/lvgl-release-v8.3/src/draw/lv_draw.su ./Librerias/lvgl-release-v8.3/src/draw/lv_draw_arc.cyclo ./Librerias/lvgl-release-v8.3/src/draw/lv_draw_arc.d ./Librerias/lvgl-release-v8.3/src/draw/lv_draw_arc.o ./Librerias/lvgl-release-v8.3/src/draw/lv_draw_arc.su ./Librerias/lvgl-release-v8.3/src/draw/lv_draw_img.cyclo ./Librerias/lvgl-release-v8.3/src/draw/lv_draw_img.d ./Librerias/lvgl-release-v8.3/src/draw/lv_draw_img.o ./Librerias/lvgl-release-v8.3/src/draw/lv_draw_img.su ./Librerias/lvgl-release-v8.3/src/draw/lv_draw_label.cyclo ./Librerias/lvgl-release-v8.3/src/draw/lv_draw_label.d ./Librerias/lvgl-release-v8.3/src/draw/lv_draw_label.o ./Librerias/lvgl-release-v8.3/src/draw/lv_draw_label.su ./Librerias/lvgl-release-v8.3/src/draw/lv_draw_layer.cyclo ./Librerias/lvgl-release-v8.3/src/draw/lv_draw_layer.d ./Librerias/lvgl-release-v8.3/src/draw/lv_draw_layer.o ./Librerias/lvgl-release-v8.3/src/draw/lv_draw_layer.su ./Librerias/lvgl-release-v8.3/src/draw/lv_draw_line.cyclo ./Librerias/lvgl-release-v8.3/src/draw/lv_draw_line.d ./Librerias/lvgl-release-v8.3/src/draw/lv_draw_line.o ./Librerias/lvgl-release-v8.3/src/draw/lv_draw_line.su ./Librerias/lvgl-release-v8.3/src/draw/lv_draw_mask.cyclo ./Librerias/lvgl-release-v8.3/src/draw/lv_draw_mask.d ./Librerias/lvgl-release-v8.3/src/draw/lv_draw_mask.o ./Librerias/lvgl-release-v8.3/src/draw/lv_draw_mask.su ./Librerias/lvgl-release-v8.3/src/draw/lv_draw_rect.cyclo ./Librerias/lvgl-release-v8.3/src/draw/lv_draw_rect.d ./Librerias/lvgl-release-v8.3/src/draw/lv_draw_rect.o ./Librerias/lvgl-release-v8.3/src/draw/lv_draw_rect.su ./Librerias/lvgl-release-v8.3/src/draw/lv_draw_transform.cyclo ./Librerias/lvgl-release-v8.3/src/draw/lv_draw_transform.d ./Librerias/lvgl-release-v8.3/src/draw/lv_draw_transform.o ./Librerias/lvgl-release-v8.3/src/draw/lv_draw_transform.su ./Librerias/lvgl-release-v8.3/src/draw/lv_draw_triangle.cyclo ./Librerias/lvgl-release-v8.3/src/draw/lv_draw_triangle.d ./Librerias/lvgl-release-v8.3/src/draw/lv_draw_triangle.o ./Librerias/lvgl-release-v8.3/src/draw/lv_draw_triangle.su ./Librerias/lvgl-release-v8.3/src/draw/lv_img_buf.cyclo ./Librerias/lvgl-release-v8.3/src/draw/lv_img_buf.d ./Librerias/lvgl-release-v8.3/src/draw/lv_img_buf.o ./Librerias/lvgl-release-v8.3/src/draw/lv_img_buf.su ./Librerias/lvgl-release-v8.3/src/draw/lv_img_cache.cyclo ./Librerias/lvgl-release-v8.3/src/draw/lv_img_cache.d ./Librerias/lvgl-release-v8.3/src/draw/lv_img_cache.o ./Librerias/lvgl-release-v8.3/src/draw/lv_img_cache.su ./Librerias/lvgl-release-v8.3/src/draw/lv_img_decoder.cyclo ./Librerias/lvgl-release-v8.3/src/draw/lv_img_decoder.d ./Librerias/lvgl-release-v8.3/src/draw/lv_img_decoder.o ./Librerias/lvgl-release-v8.3/src/draw/lv_img_decoder.su

.PHONY: clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-src-2f-draw

