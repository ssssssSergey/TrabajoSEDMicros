/*
 * Nave.h
 *
 *  Created on: Dec 24, 2025
 *      Author: srggr
 */

#ifndef NAVE_H
#define NAVE_H

#include "lvgl.h"
#include "Vector2D.h"
#include <cstdint> // Para uint32_t

class Nave {
public:
    Vector2D pos;
    lv_obj_t* visual;

    Nave(lv_obj_t* pantalla);
    ~Nave();
    void mover(uint32_t adc_val); // Recibe valor RAW del joystick
};
#endif
