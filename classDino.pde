class Dinosaurio {
  int MovDino;
  int cant=2;
  float y, x;
  PImage[] Foto= new PImage[cant];
  
  
  Dinosaurio(float y, float x) {
    this.y = y;
    this.x = x;
    for (int i=0; i<Foto.length; i++) {
      Foto[i]= loadImage("dino0"+i+".png");
    }
  }
  void DibujarDino() {
    image(Foto[MovDino], x, y); 
    if (frameCount%20==0) {
      if ( MovDino < cant-1 ) {  
        MovDino++;
      } else {
        MovDino = 0;
      }
    }
  }
  void MueveDino(int tecla){      //Simulación de salto 
   if (tecla==UP) {
      y = 85;
    }
    if (tecla == DOWN) {
      y = 200;
    } 
  }
}
