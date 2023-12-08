# Exemplaria432
“Exemplaria 432” es un videojuego 3D que explora la conexion con SuperCollider para la generacion de sonido:
https://july921.itch.io/exemplaria432

**Tabla de contenidos**
1. [Activar sonido](#Activarsonido)
2. [Controles](#Controles)
3. [Recursos usados](#Recursosusados)

## Activar sonido

Si no estas familiarizado con el programa de SuperCollider debes seguir estos pasos para activar el sonido del juego:
- Descargar e Instalar SuperCollider: https://supercollider.github.io/downloads
- Descargar el archivo "__Jugador.scd__" de este repositorio.
- Una vez instalado SuperCollider, abrir el archivo __Jugador.scd__.
- Te aparecera esta pantalla:
[![Captura-de-pantalla-23.png](https://i.postimg.cc/25hs9CyC/Captura-de-pantalla-23.png)](https://postimg.cc/HJWvVDbN)
- Deberas dar click derecho en la esquina inferior derecha del programa y nos aparecera un submen, daremos click en __Boot Server__.
[![Captura-de-pantalla-24.png](https://i.postimg.cc/3JMYBfnj/Captura-de-pantalla-24.png)](https://postimg.cc/rz9Byj6z)
- Ahora los numeros de abajo deberan iluminarse de color verde.
[![Captura-de-pantalla-25.png](https://i.postimg.cc/C1QLSFG9/Captura-de-pantalla-25.png)](https://postimg.cc/xJLSPVFP)
- Colocaremos nuestro cursor al final de cada parentesis, y presionaremos __Ctrl + Enter__ para activar el sonido.
[![Captura-de-pantalla-26.png](https://i.postimg.cc/7PCTbLBB/Captura-de-pantalla-26.png)](https://postimg.cc/23D5KCNv)
[![Captura-de-pantalla-27.png](https://i.postimg.cc/1zj3ZGZy/Captura-de-pantalla-27.png)](https://postimg.cc/NyRc6rMn)
[![Captura-de-pantalla-28.png](https://i.postimg.cc/6q6jLvyG/Captura-de-pantalla-28.png)](https://postimg.cc/k6Zv7DNn)
- En total son 14 lineas que activar, te deberan aparecer estos avisos en la parte derecha del programa.
[![Captura-de-pantalla-29.png](https://i.postimg.cc/g0n6Rkzk/Captura-de-pantalla-29.png)](https://postimg.cc/xkVCVQNW)
- Una vez completado los pasos, puedes abrir el juego.

## Controles
Input  | Accion
------------- | -------------
W  | Avanzar hacia adelante
S  | Avanzar hacia atras
D  | Avanzar hacia la derecha
A  | Avanzar hacia la izquierda
Espacio | Saltar
Esc | Pausa
Click Izquierdo | Disparo del arma 
Click Derecho | Cambio entre "freq" y "wav"
Rueda del raton en el modo "freq" | Cambio del valor de las frecuencias
Rueda del raton en el modo "wav" | Cambio del valor del tipo de onda

## Recursos usados
### Generacion procedural
https://github.com/vazgriz/DungeonGenerator
### Animacion procedural
https://github.com/lchaumartin/SpiderProceduralAnimation/tree/FirstVideo
### URP Render
https://github.com/whateep/unity-simple-URP-pixelation
