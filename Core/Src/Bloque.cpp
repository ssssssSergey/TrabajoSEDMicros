/*
 * Bloque.cpp
 *
 *  Created on: Dec 24, 2025
 *      Author: srggr
 */

#include "Bloque.h"
#include "colores.h"


Bloque::Bloque(float x, float y, lv_obj_t* pantalla) : pos(x, y) {
    salud = 3;
    visual = lv_obj_create(pantalla);
    lv_obj_set_size(visual, 30, 20);
    lv_obj_set_style_bg_color(visual, lv_color_hex(CIAN), 0);
    lv_obj_set_pos(visual, (int)pos.x, (int)pos.y);
}

Bloque::~Bloque() {
    if(visual) lv_obj_del(visual);
}

void Bloque::recibirDaño() {
    salud--;
    if (salud == 2) lv_obj_set_style_bg_color(visual, lv_color_hex(NARANJA), 0);
    if (salud == 1) lv_obj_set_style_bg_color(visual, lv_color_hex(ROJO), 0);
}
