int estado;
int trazos;
int cantidad = 13;
int Capa1 = 0;
int Capa2 = 0;
int Capa3 = 0;
int Capa4 = 0;
int Capa5 = 0;
int Capa6 = 0;
PImage end;
int[][] posiciones;

void setup() {
  size(600, 700);
  background(224, 207, 200);
  end = loadImage("END.png");
  posiciones = new int[20][2]; // Ajustar el tamaño del array posiciones
}

void draw() {
  PImage[] trazos = new PImage[cantidad];
  for (int i = 0; i < cantidad; i++) {
    String nombre = "Trazo" + nf(i, 2) + ".png";
    trazos[i] = loadImage(nombre);
  }

  //--------TRAZOS AZUL OSCURO
  if (Capa1 < 15) {
    int cual = int(random(cantidad));
    float x = random(width - 100);
    float y = random(height - 150);
    while (posicionOcupada(x, y)) {
      x = random(width - 100);
      y = random(height - 150);
    }
    posiciones[Capa1][0] = int(x); // Almacenar la posición ocupada
    posiciones[Capa1][1] = int(y);
    tint(0, 10, random(50, 150));
    image(trazos[cual], x, y, 80, 200);
    Capa1++;
  }

  //-----------TRAZOS AZUL MAS CLARO
  else if (Capa2 < 10) {
    int cual = int(random(cantidad));
    float x = random(width - 100);
    float y = random(height - 150);
    while (posicionOcupada(x, y)) {
      x = random(width - 100);
      y = random(height - 150);
    }
    posiciones[Capa2][0] = int(x); // Almacenar la posición ocupada
    posiciones[Capa2][1] = int(y);
    tint(0, 10, random(150, 200));
    image(trazos[cual], x, y, 80, 200);
    Capa2++;
  }

  //--------TRAZOS ROSAS
  else if (Capa3 < 8) {
    int cual = int(random(cantidad));
    float x = random(width - 150);
    float y = random(height - 40);
    tint(196, 79, 140);
    image(trazos[cual], x, y, 40, 60);
    Capa3++;
  }

  //-----------TRAZOS AMARILLOS
  else if (Capa4 < 8) {
    int cual = int(random(cantidad));
    float x = random(width - 150);
    float y = random(height - 70);
    tint(223, 168, 46);
    image(trazos[cual], x, y, 40, 60);
    Capa4++;
  }

  //---------LINEAS DE COLOR
  else if (Capa5 < 10) {
    int cual = int(random(cantidad));
    float x = random(width - 150);
    float y = random(height - 70);
    if (random(100) < 50) {
      tint(190, 70, 20);
    } else {
      tint(160, 90, 40);
    }

    image(trazos[cual], x, y, 100, 5);

    Capa5++;
    //image(end, 0, 0, width, height);
  }
   else if (Capa6 < 10) {
    int cual = int(random(cantidad));
    float x = random(width - 150);
    float y = random(height - 70);
    if (random(100) < 50) {
      tint(190, 70, 20);
    } else {
      tint(160, 90, 40);
    }

    image(trazos[cual], x, y, 5, 100);

    Capa6++;
    //image(end, 0, 0, width, height);
  }
}

// Función para verificar si una posición está ocupada
boolean posicionOcupada(float x, float y) {
  for (int i = 0; i < Capa1; i++) {
    if (dist(x, y, posiciones[i][0], posiciones[i][1]) < 100) {
      return true;
    }
  }

  for (int i = 0; i < Capa2; i++) {
    if (dist(x, y, posiciones[i][0], posiciones[i][1]) < 100) {
      return true;
    }
  }

  return false;
}
