/*
 * ListaDisparos.cpp
 *
 *  Created on: Dec 24, 2025
 *      Author: srggr
 */

#include "ListaDisparos.h"

ListaDisparos::ListaDisparos() {}
ListaDisparos::~ListaDisparos() {
    limpiar();
}

void ListaDisparos::agregar(float x, float y, lv_obj_t* pantalla) {
    Disparo* d = new Disparo(x, y, pantalla);
    elementos.push_back(d);
}

void ListaDisparos::actualizarTodo() {
    for (auto it = elementos.begin(); it != elementos.end(); ) {
        (*it)->actualizar();
        if ((*it)->debeDestruirse) {
            delete *it; //borra visual
            it = elementos.erase(it); //lo saca del vector
        } else {
            ++it;
        }
    }
}

void ListaDisparos::limpiar() {
    for (auto d : elementos) {
        delete d;
    }
    elementos.clear();
}
