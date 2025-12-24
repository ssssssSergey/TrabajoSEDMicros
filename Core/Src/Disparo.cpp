/*
 * Disparo.cpp
 *
 *  Created on: Dec 24, 2025
 *      Author: srggr
 */

#include "Disparo.h"

Disparo::Disparo(float x, float y, lv_obj_t* pantalla) : pos(x, y) {
    debeDestruirse = false;
    // Crear visual en LVGL
    visual = lv_obj_create(pantalla);
    lv_obj_set_size(visual, 4, 10);
    lv_obj_set_style_bg_color(visual, lv_color_hex(0xFFFF00), 0); // Amarillo
    lv_obj_clear_flag(visual, LV_OBJ_FLAG_SCROLLABLE);
    lv_obj_set_pos(visual, (int)pos.x, (int)pos.y);
}

Disparo::~Disparo() {
    if (visual != nullptr) {
        lv_obj_del(visual); // Limpia la pantalla automáticamente
    }
}

void Disparo::actualizar() {
    pos.y -= 8; // Velocidad hacia arriba
    if (pos.y < -20) debeDestruirse = true; // Salió de pantalla
    lv_obj_set_y(visual, (int)pos.y);
}


