void obstaculos(float px, float py, float tam, float tam2) {
  noStroke();
  fill(50);
  ellipse(px, py+20, tam, tam);
  ellipse(px, py+60, tam, tam);
  fill(190, 112, 191);
  rect(px, py+20, tam*2, tam2/2);
  rect(px, py, tam, tam2);
}
boolean choca(float px, float py, float ax, float ay, float tam) {
  float distan = dist(px, py, ax, ay);
  return distan <tam;
}
