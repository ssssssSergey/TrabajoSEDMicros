/*
 * Bloque.h
 *
 *  Created on: Dec 24, 2025
 *      Author: srggr
 */

#ifndef BLOQUE_H
#define BLOQUE_H

#include "lvgl.h"
#include "Vector2D.h"

class Bloque {
public:
    Vector2D pos;
    int salud;
    lv_obj_t* visual;

    Bloque(float x, float y, lv_obj_t* pantalla);
    ~Bloque();
    void recibirDano();
};
#endif
