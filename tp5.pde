/*
TP 5
Andrade Mateo
legajo:91385/4
com:1
link yt: https://youtu.be/qydFqsI-UJo
*/
DinoGoogle d;
import processing.sound.*;

SoundFile juego;
void setup() {
  size(800, 400);
  d= new DinoGoogle();
  juego= new SoundFile(this,"fondo.mp3");
  juego.amp(0.1);
  juego.loop();
}

void draw() {
  background(255);
  d.Graf();
  d.contador();
}

void keyPressed() {
  d.saltoD();
}
void mousePressed() {
  d.click();
}
