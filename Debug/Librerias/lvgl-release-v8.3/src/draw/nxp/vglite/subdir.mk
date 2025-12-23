################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_draw_vglite.c \
../Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_draw_vglite_arc.c \
../Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_draw_vglite_blend.c \
../Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_draw_vglite_line.c \
../Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_draw_vglite_rect.c \
../Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_vglite_buf.c \
../Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_vglite_utils.c 

C_DEPS += \
./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_draw_vglite.d \
./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_draw_vglite_arc.d \
./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_draw_vglite_blend.d \
./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_draw_vglite_line.d \
./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_draw_vglite_rect.d \
./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_vglite_buf.d \
./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_vglite_utils.d 

OBJS += \
./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_draw_vglite.o \
./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_draw_vglite_arc.o \
./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_draw_vglite_blend.o \
./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_draw_vglite_line.o \
./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_draw_vglite_rect.o \
./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_vglite_buf.o \
./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_vglite_utils.o 


# Each subdirectory must supply rules for building sources it contributes
Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/%.o Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/%.su Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/%.cyclo: ../Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/%.c Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I"C:/Users/srggr/STM32CubeIDE/workspace_1.18.0/trabajo_sed_micros/Librerias/lvgl-release-v8.3" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/srggr/STM32CubeIDE/workspace_1.18.0/trabajo_sed_micros/Librerias/lvgl-release-v8.3/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-src-2f-draw-2f-nxp-2f-vglite

clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-src-2f-draw-2f-nxp-2f-vglite:
	-$(RM) ./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_draw_vglite.cyclo ./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_draw_vglite.d ./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_draw_vglite.o ./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_draw_vglite.su ./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_draw_vglite_arc.cyclo ./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_draw_vglite_arc.d ./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_draw_vglite_arc.o ./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_draw_vglite_arc.su ./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_draw_vglite_blend.cyclo ./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_draw_vglite_blend.d ./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_draw_vglite_blend.o ./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_draw_vglite_blend.su ./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_draw_vglite_line.cyclo ./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_draw_vglite_line.d ./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_draw_vglite_line.o ./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_draw_vglite_line.su ./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_draw_vglite_rect.cyclo ./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_draw_vglite_rect.d ./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_draw_vglite_rect.o ./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_draw_vglite_rect.su ./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_vglite_buf.cyclo ./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_vglite_buf.d ./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_vglite_buf.o ./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_vglite_buf.su ./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_vglite_utils.cyclo ./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_vglite_utils.d ./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_vglite_utils.o ./Librerias/lvgl-release-v8.3/src/draw/nxp/vglite/lv_vglite_utils.su

.PHONY: clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-src-2f-draw-2f-nxp-2f-vglite

