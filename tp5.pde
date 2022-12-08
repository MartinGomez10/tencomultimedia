//Martin, Gomez 91465/3
//https://www.youtube.com/watch?v=1mPN7L82x50

import processing.sound.*;

SoundFile musica; 

Principal p;

void setup() {
  size(600, 600);
  p = new Principal();
  musica = new SoundFile(this, "musica.mp3");
  musica.loop(); 
}

void draw() {
  p.display();
}
void keyPressed() {
  p.cambiarP();
}
