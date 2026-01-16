/*
 * Mundo.cpp
 *
 *  Created on: Dec 24, 2025
 *      Author: srggr
 */

#include "Mundo.h"
#include "main.h"
#include <cstdlib>

Mundo::Mundo() :
	jugador(nullptr),
	pantallaRef(nullptr),
	contenedorMenu(nullptr)
{
	estadoActual = MENU_INICIO;
	gameOver = false; victoria = false;
}

Mundo::~Mundo() {
    if(jugador) delete jugador;
    disparos.limpiar();
    aliens.limpiar();
    bloques.limpiar();
}

//inicio del juego.menu inicial
void Mundo::inicializar(lv_obj_t* pantalla) {
    pantallaRef = pantalla;
    mostrarMenu();
}

//funcion para dibujar el menu inicial
void Mundo::mostrarMenu() {

		//Borramos al jugador si existe
	    if (jugador) {
	        delete jugador;
	        jugador = nullptr;
	    }

	    //Borramos todas las entidades
	    disparos.limpiar();
	    //disparosEnemigos.limpiar();
	    aliens.limpiar();
	    bloques.limpiar();

	    //Borramos el cartel de "Game Over" o "Victoria" anterior
	    if (contenedorMenu != nullptr) {
	        lv_obj_del(contenedorMenu);
	        contenedorMenu = nullptr;
	    }

	    if (contenedorMenu != nullptr) {
	        lv_obj_del(contenedorMenu);
	        contenedorMenu = nullptr;
	    }

    estadoActual = MENU_INICIO;

    //Crear un contenedor transparente para agrupar textos
    contenedorMenu = lv_obj_create(pantallaRef);
    lv_obj_set_size(contenedorMenu, 240, 320);
    lv_obj_set_style_bg_opa(contenedorMenu, LV_OPA_TRANSP, 0);
    lv_obj_set_style_border_width(contenedorMenu, 0, 0);
    lv_obj_clear_flag(contenedorMenu, LV_OBJ_FLAG_SCROLLABLE);

    //Título Grande
    lv_obj_t* labelTitulo = lv_label_create(contenedorMenu);
    lv_label_set_text(labelTitulo, "SPACE\nINVADERS");
    lv_obj_set_style_text_align(labelTitulo, LV_TEXT_ALIGN_CENTER, 0);
    lv_obj_align(labelTitulo, LV_ALIGN_CENTER, 0, -40);
    lv_obj_set_style_text_color(labelTitulo, lv_color_hex(0xFFFFFF), 0);

    //Texto de instrucción
    lv_obj_t* labelStart = lv_label_create(contenedorMenu);
    lv_label_set_text(labelStart, "Pulsar Boton\npara Jugar");
    lv_obj_set_style_text_align(labelStart, LV_TEXT_ALIGN_CENTER, 0);
    lv_obj_set_style_text_color(labelStart, lv_color_hex(0x00FF00), 0);
    lv_obj_align(labelStart, LV_ALIGN_CENTER, 0, 40);
}

//funcion que inicia el juego
void Mundo::iniciarPartida() {
    //borramos el menú inicial
    if (contenedorMenu != nullptr) {
        lv_obj_del(contenedorMenu);
        contenedorMenu = nullptr;
    }

    //Limpieza de seguridad
    if(jugador) delete jugador;
    disparos.limpiar();
   //disparosEnemigos.limpiar();
    aliens.limpiar();
    bloques.limpiar();

    gameOver = false;
    victoria = false;
    estadoActual = JUGANDO; //cambio de estado

    srand(HAL_GetTick());//para aleatorizar los disparos de los marcianitos

    //creacion de entidades
    jugador = new Nave(pantallaRef);

    for(int y=0; y<2; y++) {
        for(int x=0; x<5; x++) {
            aliens.agregar(20 + x*40, 20 + y*30, pantallaRef);
        }
    }

    bloques.agregar(40, 260, pantallaRef);
    bloques.agregar(100, 260, pantallaRef);
    bloques.agregar(160, 260, pantallaRef);
}

//menu de fin de partida
void Mundo::mostrarFinPartida(bool esVictoria) {
    //actualizamos el estado dependiendo del resultado
    estadoActual = esVictoria ? VICTORIA_TOTAL : GAME_OVER;

    //Reusamos el puntero contenedorMenu. Si había algo, lo borramos.
    if (contenedorMenu != nullptr) {
        lv_obj_del(contenedorMenu);
        contenedorMenu = nullptr;
    }

    //Creamos un fondo
    contenedorMenu = lv_obj_create(pantallaRef);
    lv_obj_set_size(contenedorMenu, 240, 320);
    lv_obj_set_style_bg_color(contenedorMenu, lv_color_hex(0x000000), 0);
    lv_obj_set_style_bg_opa(contenedorMenu, LV_OPA_90, 0);
    lv_obj_set_style_border_width(contenedorMenu, 0, 0);

    //Texto Resultado Gigante
    lv_obj_t* labelRes = lv_label_create(contenedorMenu);
    if (esVictoria) {
        lv_label_set_text(labelRes, "VICTORIA!");
        lv_obj_set_style_text_color(labelRes, lv_color_hex(0x00FF00), 0); //Verde
    } else {
        lv_label_set_text(labelRes, "GAME OVER");
        lv_obj_set_style_text_color(labelRes, lv_color_hex(0xFF0000), 0); //Rojo
    }
    lv_obj_set_style_text_align(labelRes, LV_TEXT_ALIGN_CENTER, 0);
    lv_obj_align(labelRes, LV_ALIGN_CENTER, 0, -30);

    //Texto Volver al menu de inicio
    lv_obj_t* labelVolver = lv_label_create(contenedorMenu);
    lv_label_set_text(labelVolver, "Pulsar Boton\npara Volver");
    lv_obj_set_style_text_color(labelVolver, lv_color_hex(0xFFFFFF), 0); //Blanco
    lv_obj_set_style_text_align(labelVolver, LV_TEXT_ALIGN_CENTER, 0);
    lv_obj_align(labelVolver, LV_ALIGN_CENTER, 0, 30);
}

void Mundo::intentarDisparar() {
    //Solo disparamos si estamos jugando
    if(estadoActual == JUGANDO && !gameOver && jugador) {
        disparos.agregar(jugador->pos.x + 11, jugador->pos.y - 10, pantallaRef, 0);
    }
}

void Mundo::checkColisiones() {
    //Distancia al cuadrado para los aliens (13 pixels aprox de radio)
    const float DISTANCIA_CHOQUE_ALIEN_SQ = 169.0f;

    //Recorremos todos los disparos
    for (auto itD = disparos.elementos.begin(); itD != disparos.elementos.end(); ) {
        bool impacto = false;
        Disparo* bala = *itD;

        //DISPARO CON MARCIANITOS
        if (!bala->esEnemigo) {
            for (auto itM = aliens.elementos.begin(); itM != aliens.elementos.end(); ) {
                //Chequeo de distancia
                if (bala->pos.distCuadrada((*itM)->pos) < DISTANCIA_CHOQUE_ALIEN_SQ) {

                    delete *itM; //Adiós alien visual y memoria
                    itM = aliens.elementos.erase(itM); //Lo sacamos de la lista

                    impacto = true;

                    break;
                } else {
                    ++itM;
                }
            }
        }

        //DISPARO CON NAVE (JUGADOR)
        else {
            if (jugador != nullptr && !gameOver) {
                if (bala->pos.x > jugador->pos.x &&
                    bala->pos.x < jugador->pos.x + 30 &&
                    bala->pos.y > jugador->pos.y &&
                    bala->pos.y < jugador->pos.y + 20) {

                    impacto = true;
                    gameOver = true;
                    mostrarFinPartida(false); //Llamamos a la pantalla de derrota
                    //(solo una vida)
                }
            }
        }

        //DISPARO CONTRA BLOQUE
        if (!impacto) {
            for(auto b : bloques.elementos) {
                 if (b->salud > 0 &&
                     bala->pos.x > b->pos.x && bala->pos.x < b->pos.x + 30 &&
                     bala->pos.y > b->pos.y && bala->pos.y < b->pos.y + 14) {

                     b->recibirDaño();
                     impacto = true;
                     break;
                 }
            }
        }

        //DISPARO CON BORDES O CON IMPACTOS
        if (impacto || bala->debeDestruirse) {
            delete *itD;
            itD = disparos.elementos.erase(itD);
        } else {
            ++itD;
        }
    }
}

void Mundo::actualizarJuego(uint32_t joystickVal) {
    //Si no estamos jugando, salimos
    if (estadoActual != JUGANDO) return;

    //ACTUALIZAR LAS ENTIDADES
    if (jugador) jugador->mover(joystickVal);
    disparos.actualizarTodo();
    aliens.moverGrupo(240, disparos);
    bloques.actualizarEstado();
    checkColisiones();

    //Condición de VICTORIA: No quedan aliens
    if (aliens.elementos.empty()) {
        victoria = true;
        mostrarFinPartida(true);
        return;
    }

    //Condición de DERROTA: Aliens tocan suelo (y = 260 aprox)
    if (aliens.llegaronAlSuelo(260)) {
        gameOver = true;
        mostrarFinPartida(false);
        return;
    }
}
