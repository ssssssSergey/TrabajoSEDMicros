################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Librerias/lvgl-release-v8.3/src/widgets/lv_arc.c \
../Librerias/lvgl-release-v8.3/src/widgets/lv_bar.c \
../Librerias/lvgl-release-v8.3/src/widgets/lv_btn.c \
../Librerias/lvgl-release-v8.3/src/widgets/lv_btnmatrix.c \
../Librerias/lvgl-release-v8.3/src/widgets/lv_canvas.c \
../Librerias/lvgl-release-v8.3/src/widgets/lv_checkbox.c \
../Librerias/lvgl-release-v8.3/src/widgets/lv_dropdown.c \
../Librerias/lvgl-release-v8.3/src/widgets/lv_img.c \
../Librerias/lvgl-release-v8.3/src/widgets/lv_label.c \
../Librerias/lvgl-release-v8.3/src/widgets/lv_line.c \
../Librerias/lvgl-release-v8.3/src/widgets/lv_objx_templ.c \
../Librerias/lvgl-release-v8.3/src/widgets/lv_roller.c \
../Librerias/lvgl-release-v8.3/src/widgets/lv_slider.c \
../Librerias/lvgl-release-v8.3/src/widgets/lv_switch.c \
../Librerias/lvgl-release-v8.3/src/widgets/lv_table.c \
../Librerias/lvgl-release-v8.3/src/widgets/lv_textarea.c 

C_DEPS += \
./Librerias/lvgl-release-v8.3/src/widgets/lv_arc.d \
./Librerias/lvgl-release-v8.3/src/widgets/lv_bar.d \
./Librerias/lvgl-release-v8.3/src/widgets/lv_btn.d \
./Librerias/lvgl-release-v8.3/src/widgets/lv_btnmatrix.d \
./Librerias/lvgl-release-v8.3/src/widgets/lv_canvas.d \
./Librerias/lvgl-release-v8.3/src/widgets/lv_checkbox.d \
./Librerias/lvgl-release-v8.3/src/widgets/lv_dropdown.d \
./Librerias/lvgl-release-v8.3/src/widgets/lv_img.d \
./Librerias/lvgl-release-v8.3/src/widgets/lv_label.d \
./Librerias/lvgl-release-v8.3/src/widgets/lv_line.d \
./Librerias/lvgl-release-v8.3/src/widgets/lv_objx_templ.d \
./Librerias/lvgl-release-v8.3/src/widgets/lv_roller.d \
./Librerias/lvgl-release-v8.3/src/widgets/lv_slider.d \
./Librerias/lvgl-release-v8.3/src/widgets/lv_switch.d \
./Librerias/lvgl-release-v8.3/src/widgets/lv_table.d \
./Librerias/lvgl-release-v8.3/src/widgets/lv_textarea.d 

OBJS += \
./Librerias/lvgl-release-v8.3/src/widgets/lv_arc.o \
./Librerias/lvgl-release-v8.3/src/widgets/lv_bar.o \
./Librerias/lvgl-release-v8.3/src/widgets/lv_btn.o \
./Librerias/lvgl-release-v8.3/src/widgets/lv_btnmatrix.o \
./Librerias/lvgl-release-v8.3/src/widgets/lv_canvas.o \
./Librerias/lvgl-release-v8.3/src/widgets/lv_checkbox.o \
./Librerias/lvgl-release-v8.3/src/widgets/lv_dropdown.o \
./Librerias/lvgl-release-v8.3/src/widgets/lv_img.o \
./Librerias/lvgl-release-v8.3/src/widgets/lv_label.o \
./Librerias/lvgl-release-v8.3/src/widgets/lv_line.o \
./Librerias/lvgl-release-v8.3/src/widgets/lv_objx_templ.o \
./Librerias/lvgl-release-v8.3/src/widgets/lv_roller.o \
./Librerias/lvgl-release-v8.3/src/widgets/lv_slider.o \
./Librerias/lvgl-release-v8.3/src/widgets/lv_switch.o \
./Librerias/lvgl-release-v8.3/src/widgets/lv_table.o \
./Librerias/lvgl-release-v8.3/src/widgets/lv_textarea.o 


# Each subdirectory must supply rules for building sources it contributes
Librerias/lvgl-release-v8.3/src/widgets/%.o Librerias/lvgl-release-v8.3/src/widgets/%.su Librerias/lvgl-release-v8.3/src/widgets/%.cyclo: ../Librerias/lvgl-release-v8.3/src/widgets/%.c Librerias/lvgl-release-v8.3/src/widgets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-src-2f-widgets

clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-src-2f-widgets:
	-$(RM) ./Librerias/lvgl-release-v8.3/src/widgets/lv_arc.cyclo ./Librerias/lvgl-release-v8.3/src/widgets/lv_arc.d ./Librerias/lvgl-release-v8.3/src/widgets/lv_arc.o ./Librerias/lvgl-release-v8.3/src/widgets/lv_arc.su ./Librerias/lvgl-release-v8.3/src/widgets/lv_bar.cyclo ./Librerias/lvgl-release-v8.3/src/widgets/lv_bar.d ./Librerias/lvgl-release-v8.3/src/widgets/lv_bar.o ./Librerias/lvgl-release-v8.3/src/widgets/lv_bar.su ./Librerias/lvgl-release-v8.3/src/widgets/lv_btn.cyclo ./Librerias/lvgl-release-v8.3/src/widgets/lv_btn.d ./Librerias/lvgl-release-v8.3/src/widgets/lv_btn.o ./Librerias/lvgl-release-v8.3/src/widgets/lv_btn.su ./Librerias/lvgl-release-v8.3/src/widgets/lv_btnmatrix.cyclo ./Librerias/lvgl-release-v8.3/src/widgets/lv_btnmatrix.d ./Librerias/lvgl-release-v8.3/src/widgets/lv_btnmatrix.o ./Librerias/lvgl-release-v8.3/src/widgets/lv_btnmatrix.su ./Librerias/lvgl-release-v8.3/src/widgets/lv_canvas.cyclo ./Librerias/lvgl-release-v8.3/src/widgets/lv_canvas.d ./Librerias/lvgl-release-v8.3/src/widgets/lv_canvas.o ./Librerias/lvgl-release-v8.3/src/widgets/lv_canvas.su ./Librerias/lvgl-release-v8.3/src/widgets/lv_checkbox.cyclo ./Librerias/lvgl-release-v8.3/src/widgets/lv_checkbox.d ./Librerias/lvgl-release-v8.3/src/widgets/lv_checkbox.o ./Librerias/lvgl-release-v8.3/src/widgets/lv_checkbox.su ./Librerias/lvgl-release-v8.3/src/widgets/lv_dropdown.cyclo ./Librerias/lvgl-release-v8.3/src/widgets/lv_dropdown.d ./Librerias/lvgl-release-v8.3/src/widgets/lv_dropdown.o ./Librerias/lvgl-release-v8.3/src/widgets/lv_dropdown.su ./Librerias/lvgl-release-v8.3/src/widgets/lv_img.cyclo ./Librerias/lvgl-release-v8.3/src/widgets/lv_img.d ./Librerias/lvgl-release-v8.3/src/widgets/lv_img.o ./Librerias/lvgl-release-v8.3/src/widgets/lv_img.su ./Librerias/lvgl-release-v8.3/src/widgets/lv_label.cyclo ./Librerias/lvgl-release-v8.3/src/widgets/lv_label.d ./Librerias/lvgl-release-v8.3/src/widgets/lv_label.o ./Librerias/lvgl-release-v8.3/src/widgets/lv_label.su ./Librerias/lvgl-release-v8.3/src/widgets/lv_line.cyclo ./Librerias/lvgl-release-v8.3/src/widgets/lv_line.d ./Librerias/lvgl-release-v8.3/src/widgets/lv_line.o ./Librerias/lvgl-release-v8.3/src/widgets/lv_line.su ./Librerias/lvgl-release-v8.3/src/widgets/lv_objx_templ.cyclo ./Librerias/lvgl-release-v8.3/src/widgets/lv_objx_templ.d ./Librerias/lvgl-release-v8.3/src/widgets/lv_objx_templ.o ./Librerias/lvgl-release-v8.3/src/widgets/lv_objx_templ.su ./Librerias/lvgl-release-v8.3/src/widgets/lv_roller.cyclo ./Librerias/lvgl-release-v8.3/src/widgets/lv_roller.d ./Librerias/lvgl-release-v8.3/src/widgets/lv_roller.o ./Librerias/lvgl-release-v8.3/src/widgets/lv_roller.su ./Librerias/lvgl-release-v8.3/src/widgets/lv_slider.cyclo ./Librerias/lvgl-release-v8.3/src/widgets/lv_slider.d ./Librerias/lvgl-release-v8.3/src/widgets/lv_slider.o ./Librerias/lvgl-release-v8.3/src/widgets/lv_slider.su ./Librerias/lvgl-release-v8.3/src/widgets/lv_switch.cyclo ./Librerias/lvgl-release-v8.3/src/widgets/lv_switch.d ./Librerias/lvgl-release-v8.3/src/widgets/lv_switch.o ./Librerias/lvgl-release-v8.3/src/widgets/lv_switch.su ./Librerias/lvgl-release-v8.3/src/widgets/lv_table.cyclo ./Librerias/lvgl-release-v8.3/src/widgets/lv_table.d ./Librerias/lvgl-release-v8.3/src/widgets/lv_table.o ./Librerias/lvgl-release-v8.3/src/widgets/lv_table.su ./Librerias/lvgl-release-v8.3/src/widgets/lv_textarea.cyclo ./Librerias/lvgl-release-v8.3/src/widgets/lv_textarea.d ./Librerias/lvgl-release-v8.3/src/widgets/lv_textarea.o ./Librerias/lvgl-release-v8.3/src/widgets/lv_textarea.su

.PHONY: clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-src-2f-widgets

