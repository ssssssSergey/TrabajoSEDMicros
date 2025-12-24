/*
 * Mundo.cpp
 *
 *  Created on: Dec 24, 2025
 *      Author: srggr
 */

#include "Mundo.h"

Mundo::Mundo() : jugador(nullptr), pantallaRef(nullptr) {
    gameOver = false;
    victoria = false;
}

Mundo::~Mundo() {
    if(jugador) delete jugador;
    disparos.limpiar();
    aliens.limpiar();
    bloques.limpiar();
}

void Mundo::inicializar(lv_obj_t* pantalla) {
    pantallaRef = pantalla;

    // Limpiar si había juego anterior
    if(jugador) delete jugador;
    disparos.limpiar();
    aliens.limpiar();
    bloques.limpiar();
    gameOver = false;
    victoria = false;

    // Crear Entidades
    jugador = new Nave(pantalla);

    // Crear Aliens (Rejilla 5x3)
    for(int y=0; y<3; y++) {
        for(int x=0; x<5; x++) {
            aliens.agregar(20 + x*40, 20 + y*30, pantalla);
        }
    }

    // Crear Bloques
    bloques.agregar(40, 240, pantalla);
    bloques.agregar(100, 240, pantalla);
    bloques.agregar(160, 240, pantalla);
}

void Mundo::intentarDisparar() {
    if(!gameOver && jugador) {
        // Dispara desde el centro de la nave
        disparos.agregar(jugador->pos.x + 13, jugador->pos.y - 10, pantallaRef);
    }
}

void Mundo::checkColisiones() {
    // Definimos el umbral de choque (RadioAlien + RadioDisparo)^2
    // Alien (Radio ~10) + Disparo (Radio ~3) = 13 -> 13^2 = 169
    const float DISTANCIA_CHOQUE_SQ = 169.0f;

    // Recorremos todos los disparos
    for (auto itD = disparos.elementos.begin(); itD != disparos.elementos.end(); ) {
        bool impacto = false;

        // 1. DISPARO VS ALIEN (Usando Distancia al Cuadrado)
        for (auto itM = aliens.elementos.begin(); itM != aliens.elementos.end(); ) {

            // --- AQUÍ ESTÁ EL CAMBIO CLAVE ---
            // Usamos tu método optimizado distCuadrada()
            if ((*itD)->pos.distCuadrada((*itM)->pos) < DISTANCIA_CHOQUE_SQ) {

                // ¡Impacto confirmado!
                delete *itM; // Borramos memoria y visual del alien
                itM = aliens.elementos.erase(itM); // Lo sacamos de la lista

                impacto = true;
                break; // El disparo se gasta, dejamos de mirar aliens
            } else {
                ++itM;
            }
        }

        // 2. DISPARO VS BLOQUE (Aquí seguimos usando cajas porque los bloques son rectangulares)
        if (!impacto) {
            for(auto b : bloques.elementos) {
                 // Bloque: 30x20. Usamos AABB (Caja) porque encaja mejor visualmente
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
