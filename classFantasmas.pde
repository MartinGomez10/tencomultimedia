class Fantasmas {
  PImage Ghost;
  Float x, y;
  int ancho, alto;

  Fantasmas(float x, float y) {
    Ghost = loadImage("fantasma.png");
    this.x = x;
    this.y = y;
    ancho = 30;
    alto = 30;
  }


  void dibujarFantasmas() {
    image(Ghost, x, y);
  }
}
