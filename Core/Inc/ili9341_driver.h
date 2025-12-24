/*
 * ili9341_driver.h
 *
 *  Created on: Dec 23, 2025
 *      Author: srggr
 */

#ifndef ILI9341_DRIVER_H
#define ILI9341_DRIVER_H

#include "main.h"

#ifdef __cplusplus
extern "C" {
#endif

//Definición de Colores (RGB565)
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
void ILI9341_SendData(uint8_t* pData, uint32_t Size);

// Función rápida para probar hardware (Pinta toda la pantalla)
void Test_Hardware_Pintar(uint16_t color) {
    // 1. Abrir ventana de toda la pantalla (0,0 a 239,319)
    ILI9341_SetAddressWindow(0, 0, 239, 319);

    // 2. Crear un buffer temporal de una sola línea (240 píxeles) para no gastar RAM
    uint16_t linea_buffer[240];
    for(int i = 0; i < 240; i++) {
        linea_buffer[i] = (color >> 8) | (color << 8); // Swap de bytes si es necesario (Endianness)
        // Si los colores salen raros, prueba sin el swap: linea_buffer[i] = color;
    }

    // 3. Enviar esa línea 320 veces para llenar la altura
    for(int y = 0; y < 320; y++) {
        // Asumiendo que SendData pide (puntero, tamaño_en_bytes)
        ILI9341_SendData((uint8_t*)linea_buffer, 240 * 2);
    }
}

#ifdef __cplusplus
}
#endif

#endif
