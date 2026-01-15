/*
 * Mundo.cpp
 *
 *  Created on: Dec 24, 2025
 *      Author: srggr
 */

#include "Mundo.h"

//LV_IMG_DECLARE(nave_pixel_art); //pendiente de reubicar

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

// 1. inicializar ahora solo prepara la pantalla y muestra el menú
void Mundo::inicializar(lv_obj_t* pantalla) {
    pantallaRef = pantalla;
    mostrarMenu(); // <--- Lo primero que vemos
}

// 2. Función para pintar el menú con LVGL
void Mundo::mostrarMenu() {

	// Borramos al jugador si existe
	    if (jugador) {
	        delete jugador;
	        jugador = nullptr;
	    }

	    // Borramos todas las listas de entidades
	    // Al llamar a .limpiar(), se ejecutan los destructores y se borran los gráficos
	    disparos.limpiar();
	    //disparosEnemigos.limpiar();
	    aliens.limpiar();
	    bloques.limpiar();

	    // Borramos el cartel de "Game Over" o "Victoria" anterior
	    if (contenedorMenu != nullptr) {
	        lv_obj_del(contenedorMenu);
	        contenedorMenu = nullptr;
	    }

	if (contenedorMenu != nullptr) {
	        lv_obj_del(contenedorMenu);
	        contenedorMenu = nullptr;
	    }

    estadoActual = MENU_INICIO;

    // Crear un contenedor transparente para agrupar textos
    contenedorMenu = lv_obj_create(pantallaRef);
    lv_obj_set_size(contenedorMenu, 240, 320);
    lv_obj_set_style_bg_opa(contenedorMenu, LV_OPA_TRANSP, 0);
    lv_obj_set_style_border_width(contenedorMenu, 0, 0);
    lv_obj_clear_flag(contenedorMenu, LV_OBJ_FLAG_SCROLLABLE);

    // Título Grande
    lv_obj_t* labelTitulo = lv_label_create(contenedorMenu);
    lv_label_set_text(labelTitulo, "SPACE\nINVADERS");
    lv_obj_set_style_text_align(labelTitulo, LV_TEXT_ALIGN_CENTER, 0);
    //lv_obj_set_style_text_font(labelTitulo, &lv_font_montserrat_20, 0); // Usa fuente grande si tienes
    lv_obj_align(labelTitulo, LV_ALIGN_CENTER, 0, -40);

    lv_obj_set_style_text_color(labelTitulo, lv_color_hex(0xFFFFFF), 0);

    // Texto de instrucción
    lv_obj_t* labelStart = lv_label_create(contenedorMenu);
    lv_label_set_text(labelStart, "Pulsar Boton\npara Jugar");
    lv_obj_set_style_text_align(labelStart, LV_TEXT_ALIGN_CENTER, 0);
    // Poner texto VERDE (estilo retro)
    lv_obj_set_style_text_color(labelStart, lv_color_hex(0x00FF00), 0);

    lv_obj_align(labelStart, LV_ALIGN_CENTER, 0, 40);
}

// 3. Esta función se llama cuando pulsas el botón en el main
void Mundo::iniciarPartida() {
    // Borramos el menú visualmente
    if (contenedorMenu != nullptr) {
        lv_obj_del(contenedorMenu);
        contenedorMenu = nullptr;
    }

    // Limpieza de seguridad
    if(jugador) delete jugador;
    disparos.limpiar();
   //disparosEnemigos.limpiar();
    aliens.limpiar();
    bloques.limpiar();

    gameOver = false;
    victoria = false;
    estadoActual = JUGANDO; // <--- CAMBIO DE ESTADO

    // --- AQUÍ CREAMOS LAS ENTIDADES (Lo que antes hacías en inicializar) ---

    // Crear Nave
    jugador = new Nave(pantallaRef);

    // Crear Marcianitos (Rejilla 5x2)
    for(int y=0; y<2; y++) {
        for(int x=0; x<5; x++) {
            // Ajusta según tu constructor actual de Marcianito
            // Si usas lista genérica: aliens.agregar(new Marcianito(...));
            // Si usas lista específica:
            aliens.agregar(20 + x*40, 20 + y*30, pantallaRef);
        }
    }

    // Crear Bloques
    bloques.agregar(40, 235, pantallaRef);
    bloques.agregar(100, 235, pantallaRef);
    bloques.agregar(160, 235, pantallaRef);
}

void Mundo::mostrarFinPartida(bool esVictoria) {
    // Actualizamos el estado para que el Main sepa qué hacer
    estadoActual = esVictoria ? VICTORIA_TOTAL : GAME_OVER;

    // Reusamos el puntero contenedorMenu. Si había algo, lo borramos.
    if (contenedorMenu != nullptr) {
        lv_obj_del(contenedorMenu);
        contenedorMenu = nullptr;
    }

    // Creamos un fondo SEMI-TRANSPARENTE oscuro sobre el juego
    contenedorMenu = lv_obj_create(pantallaRef);
    lv_obj_set_size(contenedorMenu, 240, 320);
    lv_obj_set_style_bg_color(contenedorMenu, lv_color_hex(0x000000), 0);
    lv_obj_set_style_bg_opa(contenedorMenu, LV_OPA_90, 0); // 90% opaco para ver un poco el desastre de fondo
    lv_obj_set_style_border_width(contenedorMenu, 0, 0);

    // Texto Resultado Gigante
    lv_obj_t* labelRes = lv_label_create(contenedorMenu);
    if (esVictoria) {
        lv_label_set_text(labelRes, "¡VICTORIA!");
        lv_obj_set_style_text_color(labelRes, lv_color_hex(0x00FF00), 0); // Verde
    } else {
        lv_label_set_text(labelRes, "GAME OVER");
        lv_obj_set_style_text_color(labelRes, lv_color_hex(0xFF0000), 0); // Rojo
    }
    lv_obj_set_style_text_align(labelRes, LV_TEXT_ALIGN_CENTER, 0);
    lv_obj_align(labelRes, LV_ALIGN_CENTER, 0, -30);

    // Texto Volver
    lv_obj_t* labelVolver = lv_label_create(contenedorMenu);
    lv_label_set_text(labelVolver, "Pulsar Boton\npara Volver");
    lv_obj_set_style_text_color(labelVolver, lv_color_hex(0xFFFFFF), 0); // Blanco
    lv_obj_set_style_text_align(labelVolver, LV_TEXT_ALIGN_CENTER, 0);
    lv_obj_align(labelVolver, LV_ALIGN_CENTER, 0, 30);
}

void Mundo::intentarDisparar() {
    // Solo disparamos si estamos jugando
    if(estadoActual == JUGANDO && !gameOver && jugador) {
        disparos.agregar(jugador->pos.x + 11, jugador->pos.y - 10, pantallaRef);
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
                	 //los bloques son de 30x20 pixeles
                     b->recibirDaño();
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
    // Si no estamos jugando, salimos
    if (estadoActual != JUGANDO) return;

    // --- LÓGICA FÍSICA ---
    if (jugador) jugador->mover(joystickVal);
    disparos.actualizarTodo();
    aliens.moverGrupo(240);
    bloques.actualizarEstado();
    checkColisiones();

    // --- DETECCIÓN DE FIN DE PARTIDA ---

    // Condición de VICTORIA: No quedan aliens
    if (aliens.elementos.empty()) {
        victoria = true;
        mostrarFinPartida(true); // <--- Muestra mensaje
        return;
    }

    // Condición de DERROTA: Aliens tocan suelo (y = 260 aprox)
    // También podrías añadir: if(jugador->vidas <= 0)
    if (aliens.llegaronAlSuelo(260)) {
        gameOver = true;
        mostrarFinPartida(false); // <--- Muestra mensaje
        return;
    }
}
