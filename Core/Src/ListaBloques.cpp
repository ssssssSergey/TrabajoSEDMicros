/*
 * ListaBloques.cpp
 *
 *  Created on: Dec 24, 2025
 *      Author: srggr
 */

#include "ListaBloques.h"

void ListaBloques::agregar(float x, float y, lv_obj_t* pantalla) {
    elementos.push_back(new Bloque(x, y, pantalla));
}

void ListaBloques::actualizarEstado() {
    for (auto it = elementos.begin(); it != elementos.end(); ) {
        if ((*it)->salud <= 0) {
            delete *it;
            it = elementos.erase(it);
        } else {
            ++it;
        }
    }
}

void ListaBloques::limpiar() {
    for(auto b : elementos) delete b;
    elementos.clear();
}
