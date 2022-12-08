class Enemigos {
  PImage Enemigo;
  Float x, y;
  int ancho, alto;

  Enemigos(float x, float y) {
    Enemigo = loadImage("demonio.png");
    this.x = x;
    this.y = y;
    ancho = 50;
    alto = 300;
  }

  void dibujarDiablos() {
    image(Enemigo, x, y);
  }
}
