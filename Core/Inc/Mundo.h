/*
 * Mundo.h
 *
 *  Created on: Dec 24, 2025
 *      Author: srggr
 */

#ifndef MUNDO_H
#define MUNDO_H

#include "lvgl.h"
#include "Nave.h"
#include "ListaDisparos.h"
#include "ListaMarcianitos.h"
#include "ListaBloques.h"

class Mundo {
private:
    lv_obj_t* pantallaRef;
    bool gameOver;
    bool victoria;

    void checkColisiones();

public:
    Nave* jugador;
    ListaDisparos disparos;
    ListaMarcianitos aliens;
    ListaBloques bloques;

    Mundo();
    ~Mundo();

    void inicializar(lv_obj_t* pantalla);
    void actualizarJuego(uint32_t joystickVal);
    void intentarDisparar();

    bool esGameOver() { return gameOver; }
    bool esVictoria() { return victoria; }
};
#endif
