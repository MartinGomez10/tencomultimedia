//Gomez, Martin
//Comision 1
//https://youtu.be/bKzUQ9Bzggg
int cant=10;
int tam;
int tono;
void setup() {
  size(600, 600);
  tam = width/cant;
  tono = 0;
}

void draw() {
  background(0);
  for (int x=-100; x<cant; x++) {
    for (int y=-100; y<cant; y++) {
      stroke(255);
      strokeWeight(10);
      fill(tono);
      rect(x*tam, y*tam, tam, tam);
    }
  }
  if (frameCount>=600) {
    tono=0;
    frameCount=0;
  }
}

void mousePressed() {
  tono = color(random(50), random(50), random(50));
}
