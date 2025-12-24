/*
 * Marcianito.h
 *
 *  Created on: Dec 24, 2025
 *      Author: srggr
 */

#ifndef MARCIANITO_H
#define MARCIANITO_H

#include "lvgl.h"
#include "Vector2D.h"

class Marcianito {
public:
    Vector2D pos;
    lv_obj_t* visual;

    // --- CORREGIDO: Ahora acepta float x, float y ---
    Marcianito(float x, float y, lv_obj_t* pantalla);
    // -----------------------------------------------

    ~Marcianito();
    void mover(Vector2D velocidad);
};
#endif
