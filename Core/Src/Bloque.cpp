/*
 * Bloque.cpp
 *
 *  Created on: Dec 24, 2025
 *      Author: srggr
 */

#include "Bloque.h"
#include "colores.h"

LV_IMG_DECLARE(bloque_pixel_art);

Bloque::Bloque(float x, float y, lv_obj_t* pantalla) : pos(x, y) {
    salud = 3;

    visual = lv_img_create(pantalla);
    lv_img_set_src(visual, &bloque_pixel_art);

    /*
    visual = lv_obj_create(pantalla);
    lv_obj_set_size(visual, 30, 20);

    lv_obj_set_style_radius(visual, 0, 0);
    lv_obj_set_style_border_width(visual, 0, 0);
    lv_obj_clear_flag(visual, LV_OBJ_FLAG_SCROLLABLE);

    lv_obj_set_style_bg_color(visual, lv_color_hex(CIAN), 0);
    */

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
