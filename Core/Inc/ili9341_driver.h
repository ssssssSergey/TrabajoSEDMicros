/*
 * ili9341_driver.h
 *
 *  Created on: Dec 23, 2025
 *      Author: srggr
 */

#ifndef ILI9341_DRIVER_H
#define ILI9341_DRIVER_H

#include "main.h"

// --- Definición de Colores (RGB565) ---
/*
#define ILI9341_BLACK   0x0000
#define ILI9341_WHITE   0xFFFF
#define ILI9341_RED     0xF800
#define ILI9341_GREEN   0x07E0
#define ILI9341_BLUE    0x001F
*/

// --- Definición de Colores (RGB565) ---
#define NEGRO   0x0000
#define BLANCO   0xFFFF
#define ROJO     0xF800
#define VERDE   0x07E0
#define AZUL    0x001F

// --- Prototipos de funciones ---
void ILI9341_Init(void);
void ILI9341_SetAddressWindow(uint16_t x0, uint16_t y0, uint16_t x1, uint16_t y1);
void ILI9341_WriteData(uint8_t data);
void ILI9341_WriteCommand(uint8_t cmd);

void ILI9341_DrawPixel(uint16_t x, uint16_t y, uint16_t color);

// Para LVGL
void ILI9341_SendData(uint8_t* pData, uint32_t Size);

#endif
