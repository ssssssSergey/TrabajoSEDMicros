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

// Definimos los estados posibles del juego
enum EstadoJuego {
    MENU_INICIO,
    JUGANDO,
    GAME_OVER,
    VICTORIA_TOTAL
};

class Mundo {
private:
	EstadoJuego estadoActual;
	// Contenedor visual del menú (para borrarlo fácil luego)
	lv_obj_t* contenedorMenu;

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

    // NUEVAS FUNCIONES
        void mostrarMenu();
        void iniciarPartida(); // Aquí moveremos la creación de aliens/nave

    bool esGameOver() { return gameOver; }
    bool esVictoria() { return victoria; }
};
#endif
