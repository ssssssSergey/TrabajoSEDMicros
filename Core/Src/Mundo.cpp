/*
 * Mundo.cpp
 *
 *  Created on: Dec 24, 2025
 *      Author: srggr
 */

#include "Mundo.h"

Mundo::Mundo() :
	jugador(nullptr),
	pantallaRef(nullptr) { gameOver = false; victoria = false;}

Mundo::~Mundo() {
    if(jugador) delete jugador;
    disparos.limpiar();
    aliens.limpiar();
    bloques.limpiar();
}

void Mundo::inicializar(lv_obj_t* pantalla) {
    pantallaRef = pantalla;

    //Limpiar si había juego anterior
    if(jugador) delete jugador;
    disparos.limpiar();
    aliens.limpiar();
    bloques.limpiar();
    gameOver = false;
    victoria = false;

    //Crear Entidades
    jugador = new Nave(pantalla);

    //Crear Marcianitos (Rejilla 5x3)
    for(int y=0; y<3; y++) {
        for(int x=0; x<5; x++) {
            aliens.agregar(20 + x*40, 20 + y*30, pantalla);
        }
    }

    //Crear Bloques
    bloques.agregar(40, 240, pantalla);
    bloques.agregar(100, 240, pantalla);
    bloques.agregar(160, 240, pantalla);
}

void Mundo::intentarDisparar() {
    if(!gameOver && jugador) {//si no estamos en game over y hay jugador
        // Dispara desde el centro de la nave
        disparos.agregar(jugador->pos.x + 13, jugador->pos.y - 10, pantallaRef);
    }
}

void Mundo::checkColisiones() {
    const float DISTANCIA_CHOQUE_SQ = 169.0f;

    //Recorremos todos los disparos
    for (auto itD = disparos.elementos.begin(); itD != disparos.elementos.end(); ) {
        bool impacto = false;

        //DISPARO VS MARCIANITO (Usando Distancia al Cuadrado)
        for (auto itM = aliens.elementos.begin(); itM != aliens.elementos.end(); ) {
            if ((*itD)->pos.distCuadrada((*itM)->pos) < DISTANCIA_CHOQUE_SQ) {

                //Impacto
                delete *itM;
                itM = aliens.elementos.erase(itM); //Lo sacamos de la lista
                impacto = true;
                break;
            } else {
                ++itM;
            }
        }

        //DISPARO VS BLOQUE
        if (!impacto) {
            for(auto b : bloques.elementos) {
                 if (b->salud > 0 &&
                     (*itD)->pos.x > b->pos.x && (*itD)->pos.x < b->pos.x + 30 &&
                     (*itD)->pos.y > b->pos.y && (*itD)->pos.y < b->pos.y + 20) {

                     b->recibirDano();
                     impacto = true;
                     break;
                 }
            }
        }

        // Gestión del disparo tras el chequeo
        if (impacto) {
            delete *itD; // Borramos memoria y visual del disparo
            itD = disparos.elementos.erase(itD);
        } else {
            ++itD;
        }
    }
}

void Mundo::actualizarJuego(uint32_t joystickVal) {
    if (gameOver || victoria) return;

    jugador->mover(joystickVal);
    disparos.actualizarTodo();
    aliens.moverGrupo(240); // 240 ancho pantalla
    bloques.actualizarEstado(); // Borra bloques rotos

    checkColisiones();

    if (aliens.elementos.empty()) victoria = true;
    if (aliens.llegaronAlSuelo(260)) gameOver = true;
}
