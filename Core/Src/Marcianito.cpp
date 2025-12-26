/*
 * Marcianito.cpp
 *
 *  Created on: Dec 24, 2025
 *      Author: srggr
 */

#include "Marcianito.h"

Marcianito::Marcianito(float x, float y, lv_obj_t* pantalla) : pos(x, y) {
    visual = lv_obj_create(pantalla);
    lv_obj_set_size(visual, 20, 20);
    lv_obj_set_style_bg_color(visual, lv_color_hex(0xFF0000), 0);
    lv_obj_set_pos(visual, (int)pos.x, (int)pos.y);
}

Marcianito::~Marcianito() {
    if (visual) lv_obj_del(visual);
}

void Marcianito::mover(Vector2D velocidad) {
    pos = pos + velocidad;
    lv_obj_set_pos(visual, (int)pos.x, (int)pos.y);
}
