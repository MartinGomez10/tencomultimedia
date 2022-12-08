class Jugador {
  PImage Humano;
  PImage Llave;
  PImage Puerta;
  PImage Fondo;
  PImage Fuego;
  int m, n;
  int xl, yl;
  int xp, yp;
  int tam;

  Jugador() {
    n=0;
    m=0;
    tam = 30;
    xp = 570;
    yp = 550;
    xl = 570;
    yl = 540;
    Humano = loadImage("humano.png");
    Fondo = loadImage("Fondo.png");
    Fuego = loadImage("fondo2.png");
    Puerta = loadImage("salida.png");
    Llave = loadImage("llave.png");
  }

  void dibujarInfierno() {
    image(Fondo, 0, 0);
    image(Fuego, 0, 0);
  }

  void dibujarJugador() {
    image(Humano, m+0, n+0);
    moverPersonaje();
  }

  void moverPersonaje() {
    if (key=='w') {
      n--;
    }
    if (key=='s') {
      n++ ;
    }
    if (key=='a') {
      m-- ;
    }
    if (key=='d') {
      m++ ;
    }
    if (m>=570) {
      m-- ;
    }
    if (m<0) {
      m++ ;
    }
    if (n<=0) {
      n++;
    }
    if (n>570) {
      n-- ;
    }
  }

  void dibujarLlave() {
    image(Llave, xl, yl);
  }
  void dibujarPuerta() {
    image(Puerta, xp, yp);
  }
}
