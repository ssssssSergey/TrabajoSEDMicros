/*
 * ili9341_driver.c
 *
 *  Created on: Dec 23, 2025
 *      Author: srggr
 */

#include "main.h"
extern SPI_HandleTypeDef hspi1;

//función para enviar una instruccion (comando) (cmd)
void ILI9341_WriteCommand(uint8_t cmd) {
    HAL_GPIO_WritePin(DC_GPIO_Port, DC_Pin, GPIO_PIN_RESET); //DC=1 -> modo color, DC=0 -> modo comando
    HAL_GPIO_WritePin(CS_GPIO_Port, CS_Pin, GPIO_PIN_RESET); //seleccionar pantalla
    HAL_SPI_Transmit(&hspi1, &cmd, 1, 10);//transmite el comando, 1 byte, 10ms de espera maxima
    HAL_GPIO_WritePin(CS_GPIO_Port, CS_Pin, GPIO_PIN_SET);   //deseleccionar
}

//funcion para enviar parametros o colores (DC = 1)
void ILI9341_WriteData(uint8_t data) {
    HAL_GPIO_WritePin(DC_GPIO_Port, DC_Pin, GPIO_PIN_SET); //DC=1
    HAL_GPIO_WritePin(CS_GPIO_Port, CS_Pin, GPIO_PIN_RESET); //habilita comunicacion
    HAL_SPI_Transmit(&hspi1, &data, 1, 10);//manda el dato
    HAL_GPIO_WritePin(CS_GPIO_Port, CS_Pin, GPIO_PIN_SET);//deselecciona
}


void ILI9341_Init(void) {//funcion para inicializar la pantallita
	HAL_GPIO_WritePin(CS_GPIO_Port, CS_Pin, GPIO_PIN_RESET);

    //Hardware Reset
    HAL_GPIO_WritePin(RESET_GPIO_Port, RESET_Pin, GPIO_PIN_RESET);
    HAL_Delay(100);
    HAL_GPIO_WritePin(RESET_GPIO_Port, RESET_Pin, GPIO_PIN_SET);
    HAL_Delay(100);

    //Comandos de Configuración
    ILI9341_WriteCommand(0x01); //Software Reset
    HAL_Delay(1000);

    ILI9341_WriteCommand(0x11); //Sleep Out
    HAL_Delay(120);

    ILI9341_WriteCommand(0x29); //Display ON

    ILI9341_WriteCommand(0x3A); //Pixel Format
    ILI9341_WriteData(0x55);    //16-bit color (RGB565)

    ILI9341_WriteCommand(0x36); //Memory Access Control (Rotación)
    ILI9341_WriteData(0x48);    //Orientación deseada
}

void ILI9341_SetAddressWindow(uint16_t x0, uint16_t y0, uint16_t x1, uint16_t y1) {
    ILI9341_WriteCommand(0x2A); //delimitar pantalla eje x
    ILI9341_WriteData(x0 >> 8);
    ILI9341_WriteData(x0 & 0xFF);
    ILI9341_WriteData(x1 >> 8);
    ILI9341_WriteData(x1 & 0xFF);

    ILI9341_WriteCommand(0x2B); //delimitar pantalla eje y
    ILI9341_WriteData(y0 >> 8);
    ILI9341_WriteData(y0 & 0xFF);
    ILI9341_WriteData(y1 >> 8);
    ILI9341_WriteData(y1 & 0xFF);

    ILI9341_WriteCommand(0x2C); //escribir en memoria la configuracion q acabamos de hacer
}


//dibujar un pixel
void ILI9341_DrawPixel(uint16_t x, uint16_t y, uint16_t color) {
    if (x >= 240 || y >= 320) return; //si esta fuera de lo limites no dibuja

    ILI9341_SetAddressWindow(x, y, x, y);//se define un area de 1x1 pixeles (1 pixel)

    // Enviar color 16-bits en dos bytes (High byte primero)
    uint8_t data[] = { color >> 8, color & 0xFF };

    HAL_GPIO_WritePin(DC_GPIO_Port, DC_Pin, GPIO_PIN_SET);
    HAL_GPIO_WritePin(CS_GPIO_Port, CS_Pin, GPIO_PIN_RESET);
    HAL_SPI_Transmit(&hspi1, data, 2, 10);
    HAL_GPIO_WritePin(CS_GPIO_Port, CS_Pin, GPIO_PIN_SET);
}

//dibujar todo un buffer de golpe
void ILI9341_SendData(uint8_t* pData, uint32_t Size) {
    HAL_GPIO_WritePin(DC_GPIO_Port, DC_Pin, GPIO_PIN_SET);   //Modo Datos
    HAL_GPIO_WritePin(CS_GPIO_Port, CS_Pin, GPIO_PIN_RESET); //Select

    //enviamos 'Size' bytes (pueden ser 10.000 bytes) de una sola vez.
    //el STM32 escupe datos por SPI sin parar y la pantalla los va recibiendo.
    HAL_SPI_Transmit(&hspi1, pData, Size, 100);

    HAL_GPIO_WritePin(CS_GPIO_Port, CS_Pin, GPIO_PIN_SET);   //Deselect
}

//Función rápida para probar hardware (Pinta toda la pantalla)
void Test_Hardware_Pintar(uint16_t color) {
    //Abrir ventana de toda la pantalla (0,0 a 239,319)
    ILI9341_SetAddressWindow(0, 0, 239, 319);

    //Crear un buffer temporal de una sola línea (240 píxeles) para no gastar RAM
    uint16_t linea_buffer[240];
    for(int i = 0; i < 240; i++) {
        linea_buffer[i] = (color >> 8) | (color << 8);
    }

    //Enviar esa línea 320 veces para llenar la altura
    for(int y = 0; y < 320; y++) {
        ILI9341_SendData((uint8_t*)linea_buffer, 240 * 2);
    }
}

