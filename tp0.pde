//tp0 de Mateo Andrade
//legajo: 91385/4
//profesor: José Luis Bugiolachi

void setup() {
  size(500, 500);
}
void draw() {
  background(0, 150, 255);
//piso
  fill(0, 255, 0);
  stroke(0, 255, 0);
  rect(0, 350, 500, 150);
  fill(0, 0, 0);
  stroke(0, 0, 0);
  strokeWeight(1);
  line(0, 350, 500, 350);

//chancho
  println(mouseX);
  println(mouseY);
   //patas
  fill(255, 100, 255);
  stroke(0);
  strokeWeight(0.5);
  rect( 206, 369, 10, 20);
  rect( 220, 369, 10, 20);
  rect( 260, 369, 10, 20);
  rect( 274, 369, 10, 20);
  //cuerpo
  fill(255, 100, 255);
  stroke(0);
  strokeWeight(0.5);
  ellipse(250, 330, 150, 100);
   //orejas 
  fill(255, 100, 255);
  stroke(0);
  strokeWeight(0.5);
  triangle(123,  290, 142, 290, 130, 273);
  triangle(144, 290, 167, 290, 154, 272);
  //cabeza
  fill(255, 100, 255);
  stroke(0);
  strokeWeight(0.5);
  ellipse(147, 317, 75, 70);
  //ojos
  fill(0, 0, 0);
  stroke(0, 0, 0);
  strokeWeight(6);
  point(130, 305);
  fill(0, 0, 0);
  stroke(0, 0, 0);
  strokeWeight(6);
  point(155, 305);
  //trompa
  fill(0, 0, 0);
  stroke(0, 0, 0);
  strokeWeight(2);
  line(127, 318, 138, 318);
  line(127, 327, 127, 318);
  line(127, 327, 138, 327);
  line(130, 327, 130, 318);
}
