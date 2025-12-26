################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_alpha16.c \
../Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_argb.c \
../Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_chroma_keyed.c \
../Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_indexed16.c \
../Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_rgb.c \
../Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_rgb565a8.c \
../Librerias/lvgl-release-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_12_compr_az.c.c \
../Librerias/lvgl-release-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_16_compr_az.c.c \
../Librerias/lvgl-release-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_28_compr_az.c.c 

C_DEPS += \
./Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_alpha16.d \
./Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_argb.d \
./Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_chroma_keyed.d \
./Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_indexed16.d \
./Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_rgb.d \
./Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_rgb565a8.d \
./Librerias/lvgl-release-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_12_compr_az.c.d \
./Librerias/lvgl-release-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_16_compr_az.c.d \
./Librerias/lvgl-release-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_28_compr_az.c.d 

OBJS += \
./Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_alpha16.o \
./Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_argb.o \
./Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_chroma_keyed.o \
./Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_indexed16.o \
./Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_rgb.o \
./Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_rgb565a8.o \
./Librerias/lvgl-release-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_12_compr_az.c.o \
./Librerias/lvgl-release-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_16_compr_az.c.o \
./Librerias/lvgl-release-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_28_compr_az.c.o 


# Each subdirectory must supply rules for building sources it contributes
Librerias/lvgl-release-v8.3/demos/benchmark/assets/%.o Librerias/lvgl-release-v8.3/demos/benchmark/assets/%.su Librerias/lvgl-release-v8.3/demos/benchmark/assets/%.cyclo: ../Librerias/lvgl-release-v8.3/demos/benchmark/assets/%.c Librerias/lvgl-release-v8.3/demos/benchmark/assets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-demos-2f-benchmark-2f-assets

clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-demos-2f-benchmark-2f-assets:
	-$(RM) ./Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_alpha16.cyclo ./Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_alpha16.d ./Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_alpha16.o ./Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_alpha16.su ./Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_argb.cyclo ./Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_argb.d ./Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_argb.o ./Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_argb.su ./Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_chroma_keyed.cyclo ./Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_chroma_keyed.d ./Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_chroma_keyed.o ./Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_chroma_keyed.su ./Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_indexed16.cyclo ./Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_indexed16.d ./Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_indexed16.o ./Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_indexed16.su ./Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_rgb.cyclo ./Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_rgb.d ./Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_rgb.o ./Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_rgb.su ./Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_rgb565a8.cyclo ./Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_rgb565a8.d ./Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_rgb565a8.o ./Librerias/lvgl-release-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_rgb565a8.su ./Librerias/lvgl-release-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_12_compr_az.c.cyclo ./Librerias/lvgl-release-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_12_compr_az.c.d ./Librerias/lvgl-release-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_12_compr_az.c.o ./Librerias/lvgl-release-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_12_compr_az.c.su ./Librerias/lvgl-release-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_16_compr_az.c.cyclo ./Librerias/lvgl-release-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_16_compr_az.c.d ./Librerias/lvgl-release-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_16_compr_az.c.o ./Librerias/lvgl-release-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_16_compr_az.c.su ./Librerias/lvgl-release-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_28_compr_az.c.cyclo ./Librerias/lvgl-release-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_28_compr_az.c.d ./Librerias/lvgl-release-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_28_compr_az.c.o ./Librerias/lvgl-release-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_28_compr_az.c.su

.PHONY: clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-demos-2f-benchmark-2f-assets

