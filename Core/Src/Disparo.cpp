/*
 * Disparo.cpp
 *
 *  Created on: Dec 24, 2025
 *      Author: srggr
 */

#include "Disparo.h"
#include "colores.h"

Disparo::Disparo(float x, float y, lv_obj_t* pantalla) : pos(x, y) {
    debeDestruirse = false;

    //intentamos crear el objeto visual
    visual = lv_obj_create(pantalla);

    //proteccion
    if (visual == nullptr) {
        debeDestruirse = true;
        return;
    }

    lv_obj_set_size(visual, 4, 10);//rectangulo amarillo de 4x10 pixeles
    lv_obj_set_style_bg_color(visual, lv_color_hex(AMARILLO), 0);

    lv_obj_set_style_radius(visual, 0, 0);
    lv_obj_set_style_border_width(visual, 0, 0);
    lv_obj_clear_flag(visual, LV_OBJ_FLAG_SCROLLABLE);

    lv_obj_set_pos(visual, (int)pos.x, (int)pos.y);
}

Disparo::~Disparo() {
    if (visual != nullptr) {
        lv_obj_del(visual); // Limpia la pantalla automáticamente
    }
}

void Disparo::actualizar() {
    if (visual == nullptr) {
        debeDestruirse = true;
        return;
    }
    pos.y -= 12;//velocidad del disparo
    lv_obj_set_y(visual, (int)pos.y);
}


