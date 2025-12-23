################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Librerias/lvgl-release-v8.3/src/core/lv_disp.c \
../Librerias/lvgl-release-v8.3/src/core/lv_event.c \
../Librerias/lvgl-release-v8.3/src/core/lv_group.c \
../Librerias/lvgl-release-v8.3/src/core/lv_indev.c \
../Librerias/lvgl-release-v8.3/src/core/lv_indev_scroll.c \
../Librerias/lvgl-release-v8.3/src/core/lv_obj.c \
../Librerias/lvgl-release-v8.3/src/core/lv_obj_class.c \
../Librerias/lvgl-release-v8.3/src/core/lv_obj_draw.c \
../Librerias/lvgl-release-v8.3/src/core/lv_obj_pos.c \
../Librerias/lvgl-release-v8.3/src/core/lv_obj_scroll.c \
../Librerias/lvgl-release-v8.3/src/core/lv_obj_style.c \
../Librerias/lvgl-release-v8.3/src/core/lv_obj_style_gen.c \
../Librerias/lvgl-release-v8.3/src/core/lv_obj_tree.c \
../Librerias/lvgl-release-v8.3/src/core/lv_refr.c \
../Librerias/lvgl-release-v8.3/src/core/lv_theme.c 

C_DEPS += \
./Librerias/lvgl-release-v8.3/src/core/lv_disp.d \
./Librerias/lvgl-release-v8.3/src/core/lv_event.d \
./Librerias/lvgl-release-v8.3/src/core/lv_group.d \
./Librerias/lvgl-release-v8.3/src/core/lv_indev.d \
./Librerias/lvgl-release-v8.3/src/core/lv_indev_scroll.d \
./Librerias/lvgl-release-v8.3/src/core/lv_obj.d \
./Librerias/lvgl-release-v8.3/src/core/lv_obj_class.d \
./Librerias/lvgl-release-v8.3/src/core/lv_obj_draw.d \
./Librerias/lvgl-release-v8.3/src/core/lv_obj_pos.d \
./Librerias/lvgl-release-v8.3/src/core/lv_obj_scroll.d \
./Librerias/lvgl-release-v8.3/src/core/lv_obj_style.d \
./Librerias/lvgl-release-v8.3/src/core/lv_obj_style_gen.d \
./Librerias/lvgl-release-v8.3/src/core/lv_obj_tree.d \
./Librerias/lvgl-release-v8.3/src/core/lv_refr.d \
./Librerias/lvgl-release-v8.3/src/core/lv_theme.d 

OBJS += \
./Librerias/lvgl-release-v8.3/src/core/lv_disp.o \
./Librerias/lvgl-release-v8.3/src/core/lv_event.o \
./Librerias/lvgl-release-v8.3/src/core/lv_group.o \
./Librerias/lvgl-release-v8.3/src/core/lv_indev.o \
./Librerias/lvgl-release-v8.3/src/core/lv_indev_scroll.o \
./Librerias/lvgl-release-v8.3/src/core/lv_obj.o \
./Librerias/lvgl-release-v8.3/src/core/lv_obj_class.o \
./Librerias/lvgl-release-v8.3/src/core/lv_obj_draw.o \
./Librerias/lvgl-release-v8.3/src/core/lv_obj_pos.o \
./Librerias/lvgl-release-v8.3/src/core/lv_obj_scroll.o \
./Librerias/lvgl-release-v8.3/src/core/lv_obj_style.o \
./Librerias/lvgl-release-v8.3/src/core/lv_obj_style_gen.o \
./Librerias/lvgl-release-v8.3/src/core/lv_obj_tree.o \
./Librerias/lvgl-release-v8.3/src/core/lv_refr.o \
./Librerias/lvgl-release-v8.3/src/core/lv_theme.o 


# Each subdirectory must supply rules for building sources it contributes
Librerias/lvgl-release-v8.3/src/core/%.o Librerias/lvgl-release-v8.3/src/core/%.su Librerias/lvgl-release-v8.3/src/core/%.cyclo: ../Librerias/lvgl-release-v8.3/src/core/%.c Librerias/lvgl-release-v8.3/src/core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I"C:/Users/srggr/STM32CubeIDE/workspace_1.18.0/trabajo_sed_micros/Librerias/lvgl-release-v8.3" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/srggr/STM32CubeIDE/workspace_1.18.0/trabajo_sed_micros/Librerias/lvgl-release-v8.3/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-src-2f-core

clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-src-2f-core:
	-$(RM) ./Librerias/lvgl-release-v8.3/src/core/lv_disp.cyclo ./Librerias/lvgl-release-v8.3/src/core/lv_disp.d ./Librerias/lvgl-release-v8.3/src/core/lv_disp.o ./Librerias/lvgl-release-v8.3/src/core/lv_disp.su ./Librerias/lvgl-release-v8.3/src/core/lv_event.cyclo ./Librerias/lvgl-release-v8.3/src/core/lv_event.d ./Librerias/lvgl-release-v8.3/src/core/lv_event.o ./Librerias/lvgl-release-v8.3/src/core/lv_event.su ./Librerias/lvgl-release-v8.3/src/core/lv_group.cyclo ./Librerias/lvgl-release-v8.3/src/core/lv_group.d ./Librerias/lvgl-release-v8.3/src/core/lv_group.o ./Librerias/lvgl-release-v8.3/src/core/lv_group.su ./Librerias/lvgl-release-v8.3/src/core/lv_indev.cyclo ./Librerias/lvgl-release-v8.3/src/core/lv_indev.d ./Librerias/lvgl-release-v8.3/src/core/lv_indev.o ./Librerias/lvgl-release-v8.3/src/core/lv_indev.su ./Librerias/lvgl-release-v8.3/src/core/lv_indev_scroll.cyclo ./Librerias/lvgl-release-v8.3/src/core/lv_indev_scroll.d ./Librerias/lvgl-release-v8.3/src/core/lv_indev_scroll.o ./Librerias/lvgl-release-v8.3/src/core/lv_indev_scroll.su ./Librerias/lvgl-release-v8.3/src/core/lv_obj.cyclo ./Librerias/lvgl-release-v8.3/src/core/lv_obj.d ./Librerias/lvgl-release-v8.3/src/core/lv_obj.o ./Librerias/lvgl-release-v8.3/src/core/lv_obj.su ./Librerias/lvgl-release-v8.3/src/core/lv_obj_class.cyclo ./Librerias/lvgl-release-v8.3/src/core/lv_obj_class.d ./Librerias/lvgl-release-v8.3/src/core/lv_obj_class.o ./Librerias/lvgl-release-v8.3/src/core/lv_obj_class.su ./Librerias/lvgl-release-v8.3/src/core/lv_obj_draw.cyclo ./Librerias/lvgl-release-v8.3/src/core/lv_obj_draw.d ./Librerias/lvgl-release-v8.3/src/core/lv_obj_draw.o ./Librerias/lvgl-release-v8.3/src/core/lv_obj_draw.su ./Librerias/lvgl-release-v8.3/src/core/lv_obj_pos.cyclo ./Librerias/lvgl-release-v8.3/src/core/lv_obj_pos.d ./Librerias/lvgl-release-v8.3/src/core/lv_obj_pos.o ./Librerias/lvgl-release-v8.3/src/core/lv_obj_pos.su ./Librerias/lvgl-release-v8.3/src/core/lv_obj_scroll.cyclo ./Librerias/lvgl-release-v8.3/src/core/lv_obj_scroll.d ./Librerias/lvgl-release-v8.3/src/core/lv_obj_scroll.o ./Librerias/lvgl-release-v8.3/src/core/lv_obj_scroll.su ./Librerias/lvgl-release-v8.3/src/core/lv_obj_style.cyclo ./Librerias/lvgl-release-v8.3/src/core/lv_obj_style.d ./Librerias/lvgl-release-v8.3/src/core/lv_obj_style.o ./Librerias/lvgl-release-v8.3/src/core/lv_obj_style.su ./Librerias/lvgl-release-v8.3/src/core/lv_obj_style_gen.cyclo ./Librerias/lvgl-release-v8.3/src/core/lv_obj_style_gen.d ./Librerias/lvgl-release-v8.3/src/core/lv_obj_style_gen.o ./Librerias/lvgl-release-v8.3/src/core/lv_obj_style_gen.su ./Librerias/lvgl-release-v8.3/src/core/lv_obj_tree.cyclo ./Librerias/lvgl-release-v8.3/src/core/lv_obj_tree.d ./Librerias/lvgl-release-v8.3/src/core/lv_obj_tree.o ./Librerias/lvgl-release-v8.3/src/core/lv_obj_tree.su ./Librerias/lvgl-release-v8.3/src/core/lv_refr.cyclo ./Librerias/lvgl-release-v8.3/src/core/lv_refr.d ./Librerias/lvgl-release-v8.3/src/core/lv_refr.o ./Librerias/lvgl-release-v8.3/src/core/lv_refr.su ./Librerias/lvgl-release-v8.3/src/core/lv_theme.cyclo ./Librerias/lvgl-release-v8.3/src/core/lv_theme.d ./Librerias/lvgl-release-v8.3/src/core/lv_theme.o ./Librerias/lvgl-release-v8.3/src/core/lv_theme.su

.PHONY: clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-src-2f-core

