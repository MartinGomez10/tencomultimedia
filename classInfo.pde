class Info {
  PImage I;
  PImage C;

  Info() {
    textSize(30);
    textAlign(CENTER);
    background(0);
    I = loadImage("Inicio.png");
    C = loadImage("Instrucciones.png");
  }

  void dibujarInicio() {
    background(0);
    image(I, 0, 0);
    text("c para ver creditos", 450, 50);
    text("z para comenzar", 450, 570);
  }
  void dibujarCreditos() {
    background(0);
    text("Personaje interpretado por Humano \n Demonios interpretados por Demonios \n Almas condenadas interepretadas por Almas \n Direccion por Martin Gomez \n Arte por Martin Gomez \n Musica por Martin Gomez ", 300, 100);
    text("b para volver al incio", 450, 570);
  }
  void dibujarInstrucciones() {
    image(C, 0, 0);
    text("Esquiva los demonios y las almas condenadas \n con WASD, agarra la llave \n y escapa por la puerta", 300, 100);
    text("x para jugar", 450, 570);
  }
  void dibujarDerrota() {
    background(82, 14, 9);
    text("HAS MUERTO!", 300, 300);
    text("r para reintentar", 450, 570);
  }
  void dibujarVictoria() {
    background(3, 138, 75);
    text("ESCAPASTE", 300, 300);
    text("nunca regreses", 300, 350);
    text("r volver al inicio", 450, 570);
  }
}
