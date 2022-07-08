int cant2 = 1000;
float [] y= new float [cant2];
float [][] pos2 = new float[cant2][2];
void confeti(){
  for (int i=0; i<cant2; i++) {
      pos2[i][1]+= random(-1, 1);
      pos2[i][1] += y[i];
   noStroke();
    fill(random(50,255),random(50,255),random(50,255));
    rect(pos2[i][0], pos2[i][1], 4, 5);
}
}
