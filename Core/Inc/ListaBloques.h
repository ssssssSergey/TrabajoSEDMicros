/*
 * ListaBloques.h
 *
 *  Created on: Dec 24, 2025
 *      Author: srggr
 */

#ifndef LISTABLOQUES_H
#define LISTABLOQUES_H

#include <vector>
#include "Bloque.h"

class ListaBloques {
public:
    std::vector<Bloque*> elementos;

    void agregar(float x, float y, lv_obj_t* pantalla);
    void actualizarEstado(); //Elimina bloques destruidos
    void limpiar();
};
#endif
