################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/lv_fs_fatfs.c \
../Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/lv_fs_littlefs.c \
../Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/lv_fs_posix.c \
../Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/lv_fs_stdio.c \
../Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/lv_fs_win32.c 

C_DEPS += \
./Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/lv_fs_fatfs.d \
./Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/lv_fs_littlefs.d \
./Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/lv_fs_posix.d \
./Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/lv_fs_stdio.d \
./Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/lv_fs_win32.d 

OBJS += \
./Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/lv_fs_fatfs.o \
./Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/lv_fs_littlefs.o \
./Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/lv_fs_posix.o \
./Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/lv_fs_stdio.o \
./Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/lv_fs_win32.o 


# Each subdirectory must supply rules for building sources it contributes
Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/%.o Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/%.su Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/%.cyclo: ../Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/%.c Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-src-2f-extra-2f-libs-2f-fsdrv

clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-src-2f-extra-2f-libs-2f-fsdrv:
	-$(RM) ./Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/lv_fs_fatfs.cyclo ./Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/lv_fs_fatfs.d ./Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/lv_fs_fatfs.o ./Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/lv_fs_fatfs.su ./Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/lv_fs_littlefs.cyclo ./Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/lv_fs_littlefs.d ./Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/lv_fs_littlefs.o ./Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/lv_fs_littlefs.su ./Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/lv_fs_posix.cyclo ./Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/lv_fs_posix.d ./Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/lv_fs_posix.o ./Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/lv_fs_posix.su ./Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/lv_fs_stdio.cyclo ./Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/lv_fs_stdio.d ./Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/lv_fs_stdio.o ./Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/lv_fs_stdio.su ./Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/lv_fs_win32.cyclo ./Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/lv_fs_win32.d ./Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/lv_fs_win32.o ./Librerias/lvgl-release-v8.3/src/extra/libs/fsdrv/lv_fs_win32.su

.PHONY: clean-Librerias-2f-lvgl-2d-release-2d-v8-2e-3-2f-src-2f-extra-2f-libs-2f-fsdrv

