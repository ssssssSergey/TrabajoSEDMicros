################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl.c \
../Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_arc.c \
../Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_bg.c \
../Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_composite.c \
../Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_img.c \
../Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_label.c \
../Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_layer.c \
../Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_line.c \
../Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_mask.c \
../Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_polygon.c \
../Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_rect.c \
../Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_stack_blur.c \
../Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_texture_cache.c \
../Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_utils.c 

C_DEPS += \
./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl.d \
./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_arc.d \
./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_bg.d \
./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_composite.d \
./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_img.d \
./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_label.d \
./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_layer.d \
./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_line.d \
./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_mask.d \
./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_polygon.d \
./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_rect.d \
./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_stack_blur.d \
./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_texture_cache.d \
./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_utils.d 

OBJS += \
./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl.o \
./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_arc.o \
./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_bg.o \
./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_composite.o \
./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_img.o \
./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_label.o \
./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_layer.o \
./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_line.o \
./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_mask.o \
./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_polygon.o \
./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_rect.o \
./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_stack_blur.o \
./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_texture_cache.o \
./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_utils.o 


# Each subdirectory must supply rules for building sources it contributes
Librerias/lvgl-release-v8.3/src/draw/sdl/%.o Librerias/lvgl-release-v8.3/src/draw/sdl/%.su Librerias/lvgl-release-v8.3/src/draw/sdl/%.cyclo: ../Librerias/lvgl-release-v8.3/src/draw/sdl/%.c Librerias/lvgl-release-v8.3/src/draw/sdl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-src-2f-draw-2f-sdl

clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-src-2f-draw-2f-sdl:
	-$(RM) ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl.cyclo ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl.d ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl.o ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl.su ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_arc.cyclo ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_arc.d ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_arc.o ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_arc.su ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_bg.cyclo ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_bg.d ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_bg.o ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_bg.su ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_composite.cyclo ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_composite.d ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_composite.o ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_composite.su ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_img.cyclo ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_img.d ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_img.o ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_img.su ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_label.cyclo ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_label.d ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_label.o ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_label.su ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_layer.cyclo ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_layer.d ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_layer.o ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_layer.su ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_line.cyclo ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_line.d ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_line.o ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_line.su ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_mask.cyclo ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_mask.d ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_mask.o ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_mask.su ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_polygon.cyclo ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_polygon.d ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_polygon.o ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_polygon.su ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_rect.cyclo ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_rect.d ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_rect.o ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_rect.su ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_stack_blur.cyclo ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_stack_blur.d ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_stack_blur.o ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_stack_blur.su ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_texture_cache.cyclo ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_texture_cache.d ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_texture_cache.o ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_texture_cache.su ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_utils.cyclo ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_utils.d ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_utils.o ./Librerias/lvgl-release-v8.3/src/draw/sdl/lv_draw_sdl_utils.su

.PHONY: clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-src-2f-draw-2f-sdl

