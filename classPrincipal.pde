class Principal {
  int estado;
  Info I;
  Jugador J;
  Enemigos [] one = new Enemigos[3];
  Fantasmas [] two = new Fantasmas[20];

  Principal() {
    I = new Info();
    J = new Jugador();
    estado = 0;
    for (int i=0; i<one.length; i++) {
      one[i] = new Enemigos (100+i*200, 0+i*150);
    }
    for (int i=0; i<two.length; i++) {
      two[i] = new Fantasmas (100+i*50, 0+i*70);
    }
  }

  void display() {
    if (estado==0) {
      I.dibujarInicio();
    }
    if (estado==1) {
      I.dibujarCreditos();
    }
    if (estado==2) {
      I.dibujarInstrucciones();
    }
    if (estado==3) {
      J.dibujarInfierno();
      J.dibujarJugador();
      for (int i=0; i<one.length; i++) {
        one[i].dibujarDiablos();
        if (choque(J.m, J.n, J.tam, one[i].x, one[i].y, one[i].ancho, one[i].alto)) {
          if (J.m+J.tam>one[i].x && J.m<one[i].x+one[i].ancho && J.n+J.tam>one[i].y && J.n<one[i].y+one[i].alto) {
            estado = 7;
          }
          if (J.m+J.tam> J.xl && J.n+J.tam> J.yl ) {
            estado = 4;
            J.m = 0;
            J.n = 0;
          }
        }
        J.dibujarLlave();
      }
    }
    if (estado==4) {
      J.dibujarInfierno();
      J.dibujarJugador();
      for (int i=0; i<two.length; i++) {
        two[i].dibujarFantasmas();
        if (choque(J.m, J.n, J.tam, two[i].x, two[i].y, two[i].ancho, two[i].alto)) {
          if (J.m+J.tam> two[i].x && J.m< two[i].x+ two[i].ancho && J.n+J.tam> two[i].y && J.n< two[i].y+ two[i].alto) {
            estado = 7;
          }
          if (J.m+J.tam> J.xp && J.n+J.tam> J.yp ) {
            estado = 6;
            J.m = 0;
            J.n = 0;
          }
        }
        J.dibujarPuerta();
      }
    }
    if (estado==6) {
      I.dibujarVictoria();
    }
    if (estado==7) {
      I.dibujarDerrota();
    }
  }



  void cambiarP() {
    if (estado==0) {
      if (key=='c') {
        estado = 1;
      }
      if (key=='z') {
        estado = 2;
      }
    }
    if (estado==1) {
      if (key=='b') {
        estado = 0;
      }
    }
    if (estado==2) {
      if (key=='x') {
        estado = 3;
      }
    }
    if (estado==3) {
      if (key=='h') {
        estado = 4;
      }
    }
    if (estado==6) {
      if ( key=='r') {
        estado = 0;
        J.m = 0;
        J.n = 0;
      }
    }
    if (estado==7) {
      if ( key=='r') {
        estado = 3;
        J.m = 0;
        J.n = 0;
      }
    }
  }
  boolean choque(float x, float y, float tam, float ax, float ay, float ancho, float alto) {
    if (x+tam>ax && x<x+ancho && y+tam*2>y && y<ay+alto) {
      return true;
    } else {
      return false;
    }
  }
}
