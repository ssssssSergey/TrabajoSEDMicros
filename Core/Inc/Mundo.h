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

//Definimos los estados posibles del juego
enum EstadoJuego {
    MENU_INICIO,
    JUGANDO,
    GAME_OVER,
    VICTORIA_TOTAL
};

class Mundo {
public:
	EstadoJuego estadoActual;

	//Contenedor visual del menú
	lv_obj_t* contenedorMenu;
    lv_obj_t* pantallaRef;
    lv_obj_t* objFondo;

    bool gameOver;
    bool victoria;

    void checkColisiones();

    Nave* jugador;
    ListaDisparos disparos;
    ListaMarcianitos aliens;
    ListaBloques bloques;

    Mundo();
    ~Mundo();

    void inicializar(lv_obj_t* pantalla);
    void actualizarJuego(uint32_t joystickVal);
    void intentarDisparar();

    void mostrarMenu();
    void iniciarPartida();
    void mostrarFinPartida(bool esVictoria);

    bool esGameOver() { return gameOver; }
    bool esVictoria() { return victoria; }
};
#endif
