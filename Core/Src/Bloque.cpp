/*
 * Bloque.cpp
 *
 *  Created on: Dec 24, 2025
 *      Author: srggr
 */

#include <Bloque.h>

Bloque::Bloque(float x, float y, lv_obj_t* pantalla) : pos(x, y) {
    salud = 3;
    visual = lv_obj_create(pantalla);
    lv_obj_set_size(visual, 30, 20);
    lv_obj_set_style_bg_color(visual, lv_color_hex(0x00FFFF), 0); // Cyan
    lv_obj_set_pos(visual, (int)pos.x, (int)pos.y);
}

Bloque::~Bloque() {
    if(visual) lv_obj_del(visual);
}

void Bloque::recibirDano() {
    salud--;
    if (salud == 2) lv_obj_set_style_bg_color(visual, lv_color_hex(0x00AAAA), 0);
    if (salud == 1) lv_obj_set_style_bg_color(visual, lv_color_hex(0x005555), 0);
}
