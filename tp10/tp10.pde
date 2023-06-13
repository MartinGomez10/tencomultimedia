int estado;
int trazos;
int cantidad = 13;
int Capa1 = 0;
int Capa2 = 0;
int Capa3 = 0;
int Capa4 = 0;
PImage end;

void setup() {
  size(500, 700);
  background(224, 207, 200);
  end = loadImage("END.png");
}

void draw() {
  PImage[] trazos = new PImage[cantidad];
  for (int i = 0; i < cantidad; i++) {
    String nombre = "Trazo" + nf(i, 2) + ".png";
    trazos[i] = loadImage(nombre);
  }
  if (Capa1 < 15) {
    int cual = int(random(cantidad));
    float x = random(10, width - 60);
    float y = random(20, height - 150);
    tint(0, 10, random(50, 150));
    image(trazos[cual], x, y, 80, 200);
    Capa1++;
  } 
   else if (Capa2 < 15) {
    int cual = int(random(cantidad));
    float x = random(10, width - 60);
    float y = random(20, height - 150);
    tint(0, 10, random(150, 200));
    image(trazos[cual], x, y, 80, 200);
    Capa2++;
  } 
  else if (Capa3 < 20) {
    int cual = int(random(cantidad));
    float x = random(40, width - 40);
    float y = random(50, height - 50);
    if (random(100) < 50) {
      tint(196, 79, 140);
    } else {
      tint(255, random(100, 120), 0);
    }
    image(trazos[cual], x, y, 40, 60);
    Capa3++;
  }
   else if (Capa4 < 7) {
    int cual = int(random(cantidad));
    float x = random(10, width - 60);
    float y = random(20, height - 150);
    tint(160, 90, 40);
    image(trazos[cual], x, y, 100, 5);
    Capa4++;
    image(end, 0, 0, width, height);
  }
}
