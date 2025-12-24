/*
 * ListaMarcianitos.cpp
 *
 *  Created on: Dec 24, 2025
 *      Author: srggr
 */

#include "ListaMarcianitos.h"

ListaMarcianitos::ListaMarcianitos() {
    direccion = 1;
    velocidad = 2.0f;
}

void ListaMarcianitos::agregar(float x, float y, lv_obj_t* pantalla) {
    elementos.push_back(new Marcianito(x, y, pantalla));
}

void ListaMarcianitos::moverGrupo(int anchoPantalla) {
    bool tocoPared = false;

    // 1. Mover lateralmente
    Vector2D velLateral(velocidad * direccion, 0); // Creamos el vector

    for (auto m : elementos) {
        m->mover(velLateral); // Pasamos el vector, no dos floats

        if (m->pos.x > (anchoPantalla - 20) || m->pos.x < 0) {
            tocoPared = true;
        }
    }

    // 2. Si toca pared
    if (tocoPared) {
        direccion *= -1;
        Vector2D velBajada(0, 10); // Vector hacia abajo
        for (auto m : elementos) {
            m->mover(velBajada); // Pasamos vector
        }
    }
}

bool ListaMarcianitos::llegaronAlSuelo(int limiteY) {
    for (auto m : elementos) {
        if (m->pos.y > limiteY) return true;
    }
    return false;
}

void ListaMarcianitos::limpiar() {
    for (auto m : elementos) delete m;
    elementos.clear();
}
