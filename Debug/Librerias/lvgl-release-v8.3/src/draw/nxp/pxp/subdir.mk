################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Librerias/lvgl-release-v8.3/src/draw/nxp/pxp/lv_draw_pxp.c \
../Librerias/lvgl-release-v8.3/src/draw/nxp/pxp/lv_draw_pxp_blend.c \
../Librerias/lvgl-release-v8.3/src/draw/nxp/pxp/lv_gpu_nxp_pxp.c \
../Librerias/lvgl-release-v8.3/src/draw/nxp/pxp/lv_gpu_nxp_pxp_osa.c 

C_DEPS += \
./Librerias/lvgl-release-v8.3/src/draw/nxp/pxp/lv_draw_pxp.d \
./Librerias/lvgl-release-v8.3/src/draw/nxp/pxp/lv_draw_pxp_blend.d \
./Librerias/lvgl-release-v8.3/src/draw/nxp/pxp/lv_gpu_nxp_pxp.d \
./Librerias/lvgl-release-v8.3/src/draw/nxp/pxp/lv_gpu_nxp_pxp_osa.d 

OBJS += \
./Librerias/lvgl-release-v8.3/src/draw/nxp/pxp/lv_draw_pxp.o \
./Librerias/lvgl-release-v8.3/src/draw/nxp/pxp/lv_draw_pxp_blend.o \
./Librerias/lvgl-release-v8.3/src/draw/nxp/pxp/lv_gpu_nxp_pxp.o \
./Librerias/lvgl-release-v8.3/src/draw/nxp/pxp/lv_gpu_nxp_pxp_osa.o 


# Each subdirectory must supply rules for building sources it contributes
Librerias/lvgl-release-v8.3/src/draw/nxp/pxp/%.o Librerias/lvgl-release-v8.3/src/draw/nxp/pxp/%.su Librerias/lvgl-release-v8.3/src/draw/nxp/pxp/%.cyclo: ../Librerias/lvgl-release-v8.3/src/draw/nxp/pxp/%.c Librerias/lvgl-release-v8.3/src/draw/nxp/pxp/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I"C:/Users/srggr/STM32CubeIDE/workspace_1.18.0/trabajo_sed_micros/Librerias/lvgl-release-v8.3" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/srggr/STM32CubeIDE/workspace_1.18.0/trabajo_sed_micros/Librerias/lvgl-release-v8.3/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-src-2f-draw-2f-nxp-2f-pxp

clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-src-2f-draw-2f-nxp-2f-pxp:
	-$(RM) ./Librerias/lvgl-release-v8.3/src/draw/nxp/pxp/lv_draw_pxp.cyclo ./Librerias/lvgl-release-v8.3/src/draw/nxp/pxp/lv_draw_pxp.d ./Librerias/lvgl-release-v8.3/src/draw/nxp/pxp/lv_draw_pxp.o ./Librerias/lvgl-release-v8.3/src/draw/nxp/pxp/lv_draw_pxp.su ./Librerias/lvgl-release-v8.3/src/draw/nxp/pxp/lv_draw_pxp_blend.cyclo ./Librerias/lvgl-release-v8.3/src/draw/nxp/pxp/lv_draw_pxp_blend.d ./Librerias/lvgl-release-v8.3/src/draw/nxp/pxp/lv_draw_pxp_blend.o ./Librerias/lvgl-release-v8.3/src/draw/nxp/pxp/lv_draw_pxp_blend.su ./Librerias/lvgl-release-v8.3/src/draw/nxp/pxp/lv_gpu_nxp_pxp.cyclo ./Librerias/lvgl-release-v8.3/src/draw/nxp/pxp/lv_gpu_nxp_pxp.d ./Librerias/lvgl-release-v8.3/src/draw/nxp/pxp/lv_gpu_nxp_pxp.o ./Librerias/lvgl-release-v8.3/src/draw/nxp/pxp/lv_gpu_nxp_pxp.su ./Librerias/lvgl-release-v8.3/src/draw/nxp/pxp/lv_gpu_nxp_pxp_osa.cyclo ./Librerias/lvgl-release-v8.3/src/draw/nxp/pxp/lv_gpu_nxp_pxp_osa.d ./Librerias/lvgl-release-v8.3/src/draw/nxp/pxp/lv_gpu_nxp_pxp_osa.o ./Librerias/lvgl-release-v8.3/src/draw/nxp/pxp/lv_gpu_nxp_pxp_osa.su

.PHONY: clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-src-2f-draw-2f-nxp-2f-pxp

