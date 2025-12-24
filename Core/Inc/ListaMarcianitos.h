/*
 * ListaMarcianitos.h
 *
 *  Created on: Dec 24, 2025
 *      Author: srggr
 */

#ifndef LISTAMARCIANITOS_H
#define LISTAMARCIANITOS_H

#include <vector>
#include "Marcianito.h"

class ListaMarcianitos {
public:
    std::vector<Marcianito*> elementos;
    int direccion; // 1 derecha, -1 izquierda
    float velocidad;

    ListaMarcianitos();
    void agregar(float x, float y, lv_obj_t* pantalla);
    void moverGrupo(int anchoPantalla); // Lógica de "Space Invaders"
    void limpiar();
    bool llegaronAlSuelo(int limiteY);
};
#endif
