class Dinosaurio {
  int MovDino;
  int cant=2;
  PImage[] Foto= new PImage[cant];
  Dinosaurio() {
    for (int i=0; i<Foto.length; i++) {
      Foto[i]= loadImage("dino0"+i+".png");
    }
  }
  void DibujarDino() {
    image(Foto[MovDino], 650, 200); 
    if (frameCount%20==0) {
      if ( MovDino < cant-1 ) {  
        MovDino++;
      } else {
        MovDino = 0;
      }
    }
  }
}
