class DinoGoogle {
  int pant=0;
  Pierde p;
  Dino dino;
  Fondo f;
  Obstaculo [] obs = new Obstaculo [2];
  Inicio i;
  Gana g;
  int puntos;

  DinoGoogle() {
    p= new Pierde();
    i= new Inicio();
    f=new Fondo();
    dino= new Dino();
    g= new Gana();
    arregloObs ();
    textSize(20);
    fill(255, 0, 0);
  }

  void arregloObs () {
    for (int i=0; i<obs.length; i++) {
      obs[i] = new Obstaculo ();
    }
  }

  void dibujarArregloObs () {
    for (int i=0; i<obs.length; i++) {
      obs[i].dibujarObs ();
      obs[i].mueveObs();
    }
  }

  void Graf() {
    if (pant==0) {//inicio
      i.dibujarInicio();
    }
    if (pant==1) {//in game
      contador();
      f.DibujarCactus();
      dino.dibujarDino();
      dibujarArregloObs ();
      choqueDyO();

      textSize(20);
      fill(255, 0, 0);
      text(puntos, 50, 50);
    }
    if (pant==2) {//pierde
      p.dPierde();
      reinicio();
       juego.stop();
    }
    if (pant==3) {//gana
      g.gano();
     reinicio();
      juego.stop();
    }
  }


  void saltoD() {
    if (key == ' ') {
      dino.dinoSalto();
    }
  }


  void contador() {
    for (int i=0; i<obs.length; i++) {
      if (obs[i].x>846) {
        puntos+=1;
      }
    }
    if (puntos==60) {
      pant=3;
    }
  }
  void click() {
    if (mouseX <= 516 && mouseY<=342 && mouseX>=282 && mouseY >= 279) {
      pant=1;
    }
  }

  void choqueDyO() {
    for (int i=0; i<obs.length; i++) {
      float distan = dist(dino.px, dino.py, obs [i].x, obs[i].y); 
      if (distan <= obs[i].x/18 + obs[i].y/8) {
        pant=2;
      }
    }
  }

  void reinicio() {
    if (key=='r'||key=='R') {
      
      pant=0;
      i.dibujarInicio();
      puntos=0;
      setup();
      juego.loop();
    }
  }
}
