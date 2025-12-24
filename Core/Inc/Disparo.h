/*
 * Disparo.h
 *
 *  Created on: Dec 24, 2025
 *      Author: srggr
 */

#ifndef DISPARO_H
#define DISPARO_H

#include "lvgl.h"
#include "Vector2D.h"

class Disparo {
public:
    Vector2D pos;
    lv_obj_t* visual;
    bool debeDestruirse; // Flag para indicar que salió de pantalla o chocó

    Disparo(float x, float y, lv_obj_t* pantalla);
    ~Disparo(); // El destructor borrará el objeto visual
    void actualizar();
};
#endif
