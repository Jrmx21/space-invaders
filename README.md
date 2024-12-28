# Space Invaders
Space Invaders es un videojuego clásico de arcade desarrollado por Tomohiro Nishikado y lanzado por Taito en 1978. Es uno de los juegos más influyentes de la historia, considerado un pionero en el género de los shooters y un catalizador para el auge de la industria de los videojuegos.
## ¿En qué consiste el juego?
En Space Invaders, el jugador controla una nave espacial ubicada en la parte inferior de la pantalla. El objetivo principal es destruir a los "invasores espaciales", que son alienígenas que descienden lentamente desde la parte superior de la pantalla. Los alienígenas se mueven de lado a lado en formación, acelerando su velocidad a medida que son eliminados.
## Programación del Juego
### Jugador
El jugador podrá moverse de izquierda a derecha pulsando las flechas y disparar hacia arriba pulsando “Space”. El jugador tiene 3 vidas, se le resta una cada vez que colisiona con una bala de un alien.
### Alien
El alien se moverá de derecha a izquierda, y cada cierto tiempo bajará un poco. También disparará cada cierto tiempo con la probabilidad de 1/50.
### Bunker
El bunker principalmente tiene 40 de durabilidad, cada vez que una bala de un alien choca con este le restará 2 de durabilidad. Cada vez que baje a 30, 20 o 10 cambiará de sprite para indicar la durabilidad del bunker. Cuando llegue a cero, desaparecerá.
En el caso de que el alien choque con el bunker se restará a 0 la durabilidad instantáneamente.
