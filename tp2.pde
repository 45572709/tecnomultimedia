/*
TP 2: ilusión óptica 

Mateo Andrade
91385/4
comi. 1
*/
int can = 1;
int tam;
float fc;
void setup() {
  size(500, 500);
  tam = width/can;
  rectMode(CENTER);
}
void draw() {
  fc++;
  background(0);
  for (int y=0; y<can; y++) {
    for (float cen =fc; cen>0; cen-=15) {
      colorTunel(cen);
      float lX = constrain(mouseX, y*tam, y*tam+tam);
      float lY = constrain(mouseY, y*tam, y*tam+tam);
      float uX = map(cen, tam, 0, y*tam+tam/2, lX);
      float uY = map(cen, tam, 0, y*tam+tam/2, lY);
      rect(uX, uY, cen, cen, 7);
      if (mousePressed) {
        fc=0;
      }
      if (key=='1') {
        cen-= 20;
      }
      if (key=='2') {
        cen-= 30;
      }
      if (key=='3') {
        cen-= 40;
      }
      if (key=='4') {
        cen-= 50;
      }
      if (key=='0') {
        cen-= 15;
      }
    }
  }
}

void colorTunel(float cen) {
  float verde = map(cen, 200, 300, 40, 255 );
  float amarillo = map(cen, 100, 500, 100, 200 );
  float azul = map(cen, 400, 500, 250, 50 );
  fill(amarillo, verde, azul);
}
