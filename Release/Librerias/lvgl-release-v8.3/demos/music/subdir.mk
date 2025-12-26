################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Librerias/lvgl-release-v8.3/demos/music/lv_demo_music.c \
../Librerias/lvgl-release-v8.3/demos/music/lv_demo_music_list.c \
../Librerias/lvgl-release-v8.3/demos/music/lv_demo_music_main.c 

C_DEPS += \
./Librerias/lvgl-release-v8.3/demos/music/lv_demo_music.d \
./Librerias/lvgl-release-v8.3/demos/music/lv_demo_music_list.d \
./Librerias/lvgl-release-v8.3/demos/music/lv_demo_music_main.d 

OBJS += \
./Librerias/lvgl-release-v8.3/demos/music/lv_demo_music.o \
./Librerias/lvgl-release-v8.3/demos/music/lv_demo_music_list.o \
./Librerias/lvgl-release-v8.3/demos/music/lv_demo_music_main.o 


# Each subdirectory must supply rules for building sources it contributes
Librerias/lvgl-release-v8.3/demos/music/%.o Librerias/lvgl-release-v8.3/demos/music/%.su Librerias/lvgl-release-v8.3/demos/music/%.cyclo: ../Librerias/lvgl-release-v8.3/demos/music/%.c Librerias/lvgl-release-v8.3/demos/music/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-demos-2f-music

clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-demos-2f-music:
	-$(RM) ./Librerias/lvgl-release-v8.3/demos/music/lv_demo_music.cyclo ./Librerias/lvgl-release-v8.3/demos/music/lv_demo_music.d ./Librerias/lvgl-release-v8.3/demos/music/lv_demo_music.o ./Librerias/lvgl-release-v8.3/demos/music/lv_demo_music.su ./Librerias/lvgl-release-v8.3/demos/music/lv_demo_music_list.cyclo ./Librerias/lvgl-release-v8.3/demos/music/lv_demo_music_list.d ./Librerias/lvgl-release-v8.3/demos/music/lv_demo_music_list.o ./Librerias/lvgl-release-v8.3/demos/music/lv_demo_music_list.su ./Librerias/lvgl-release-v8.3/demos/music/lv_demo_music_main.cyclo ./Librerias/lvgl-release-v8.3/demos/music/lv_demo_music_main.d ./Librerias/lvgl-release-v8.3/demos/music/lv_demo_music_main.o ./Librerias/lvgl-release-v8.3/demos/music/lv_demo_music_main.su

.PHONY: clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-demos-2f-music

