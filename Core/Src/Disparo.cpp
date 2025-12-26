/*
 * Disparo.cpp
 *
 *  Created on: Dec 24, 2025
 *      Author: srggr
 */

#include "Disparo.h"

Disparo::Disparo(float x, float y, lv_obj_t* pantalla) : pos(x, y) {
    debeDestruirse = false;

    // Intentamos crear el objeto visual
    visual = lv_obj_create(pantalla);

    // --- PROTECCIÓN ANTI-CRASH ---
    if (visual == nullptr) {
        // ¡No hay memoria en LVGL!
        // Marcamos para destruir inmediatamente y evitamos configurar nada
        debeDestruirse = true;
        return;
    }
    // -----------------------------

    lv_obj_set_size(visual, 4, 10);
    lv_obj_set_style_bg_color(visual, lv_color_hex(0xFFFF00), 0);
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

    // ... resto de tu código de movimiento ...
    pos.y -= 8;
    // ...
    lv_obj_set_y(visual, (int)pos.y);
}


