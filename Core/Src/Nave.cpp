/*
 * Nave.cpp
 *
 *  Created on: Dec 24, 2025
 *      Author: srggr
 */

#include "Nave.h"
#include "colores.h"

Nave::Nave(lv_obj_t* pantalla) : pos(120, 280) {
    visual = lv_obj_create(pantalla);
    lv_obj_set_size(visual, 30, 20);
    lv_obj_set_style_bg_color(visual, lv_color_hex(VERDE), 0); //Verde
    lv_obj_set_pos(visual, (int)pos.x, (int)pos.y);
}

Nave::~Nave() {
    if(visual) lv_obj_del(visual);
}

void Nave::mover(uint32_t adc_val) {
    //adc_val 0..4095. Centro ~2048
    if (adc_val < 1000) pos.x -= 4; //Izquierda
    if (adc_val > 3000) pos.x += 4; //Derecha

    //Limites (Pantalla ancho 240)
    if (pos.x < 0) pos.x = 0;
    if (pos.x > 210) pos.x = 210;

    lv_obj_set_x(visual, (int)pos.x);
}
