/*
 * Marcianito.cpp
 *
 *  Created on: Dec 24, 2025
 *      Author: srggr
 */

#include "Marcianito.h"
#include "colores.h"

Marcianito::Marcianito(float x, float y, lv_obj_t* pantalla) : pos(x, y) {
    visual = lv_obj_create(pantalla);
    lv_obj_set_size(visual, 20, 20);

    lv_obj_set_style_radius(visual, 0, 0);
    lv_obj_set_style_border_width(visual, 0, 0);
    lv_obj_clear_flag(visual, LV_OBJ_FLAG_SCROLLABLE);

    lv_obj_set_style_bg_color(visual, lv_color_hex(NARANJA), 0);
    lv_obj_set_pos(visual, (int)pos.x, (int)pos.y);
}

Marcianito::~Marcianito() {
    if (visual) lv_obj_del(visual);
}

void Marcianito::mover(Vector2D velocidad) {
    pos = pos + velocidad;
    lv_obj_set_pos(visual, (int)pos.x, (int)pos.y);
}
