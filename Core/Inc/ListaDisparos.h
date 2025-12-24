/*
 * ListaDisparos.h
 *
 *  Created on: Dec 24, 2025
 *      Author: srggr
 */

#ifndef LISTADISPAROS_H
#define LISTADISPAROS_H

#include <vector>
#include "Disparo.h"

class ListaDisparos {
public:
    std::vector<Disparo*> elementos;

    ListaDisparos();
    ~ListaDisparos();

    void agregar(float x, float y, lv_obj_t* pantalla);
    void actualizarTodo();
    void limpiar();
};
#endif
