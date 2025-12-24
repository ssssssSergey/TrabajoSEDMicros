#pragma once
#include <cmath>

//CLASE QUE SE ENCARGA DE LA RESOLUCION DE OPERACIONES CON VECTORES 2D
struct Vector2D
{
	float x{};
	float y{};

	Vector2D(float _x = 0.0f, float _y = 0.0f) : x(_x), y(_y) {}

	//modulo de un vector
	inline float modulo() const {
		return sqrt(x * x + y * y);
	}

	//argumento
	inline float argumento() const {
		return atan2(y, x);
	}

	//vector unitario
	inline Vector2D unitario() const {
		auto mod = modulo();
		if (mod > 0.00001) return { x / mod, y / mod };
		return { x,y };
	}

	//resta de vectores
	inline Vector2D operator - (const Vector2D& v) const {
		return { x - v.x , y - v.y };
	}

	//suma de vectores
	inline Vector2D operator + (const Vector2D& v) const {
		return { x + v.x , y + v.y };
	}

	//division de vector por un escalar 
	inline Vector2D operator / (float f) const {
		return { x / f,y / f };
	}

	//producto escalar
	inline float operator * (const Vector2D& v) const {
		return  x * v.x + y * v.y;
	}

	//vector por un escalar
	inline Vector2D operator * (float f) const {
		return { x * f, y * f };
	}

	//escalar por un vector
	friend Vector2D operator * (float, const Vector2D&);

	// Distancia al cuadrado (OPTIMIZACIÓN PARA COLISIONES)
	    // Calcular raíces cuadradas (sqrt) es lento. Para ver si dos cosas chocan
	    // es mejor comparar la distancia al cuadrado.
	    inline float distCuadrada(const Vector2D& v) const {
	        float dx = x - v.x;
	        float dy = y - v.y;
	        return dx*dx + dy*dy;
	    }

};
//escalar por un vector
inline Vector2D operator * (float f, const Vector2D& v) {
	return { v.x * f, v.y * f };
}
