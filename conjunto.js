class Cuadrilatero {
  constructor(x, y, tamaño, angulo) {
    this.posX = x;
    this.posY = y;
    this.tamaño = tamaño;
    this.angulo = angulo;
  }

  dibujar() {
    push();
    translate(this.posX, this.posY);
    rotate(this.angulo);
    rectMode(CENTER);


    // Colores
    let colorPrincipal, colorSecundario;

    if (this.tamaño < 150) {
      colorPrincipal = color(0, 40, 0, 280); // verdeoscuro
      colorSecundario = color(255, 255, 255); // Blanco 
    } else if (this.tamaño < 250) {      
      colorPrincipal = color(218, 213, 34); // Amarillo
      colorSecundario = color(255, 255, 255); // Blanco 
    } else if (this.tamaño < 350) {
      colorPrincipal = color(32, 41, 84); // Azul oscuro
      colorSecundario = color(255, 255, 255); // Blanco 
    } else if (this.tamaño < 425) {
      colorPrincipal = color(38, 0, 0); // rojo 
      colorSecundario = color(255, 255, 255); // Blanco 
    } else if (this.tamaño < 500) {
      colorPrincipal = color(0, 0, 0); //negro
      colorSecundario = color(255, 255, 255); // Blanco 
    } else {      
      colorPrincipal = color(20,0,125); // Azul oscuro
      colorSecundario = color(255, 255, 255); // Blanco 
    }


    // Dibujar cuadrilátero con gradiente
    let gradiente = drawingContext.createLinearGradient(-this.tamaño*2, 1, this.tamaño/2, 0);
    gradiente.addColorStop(1, colorPrincipal.toString());
    gradiente.addColorStop(0, colorSecundario.toString());
    drawingContext.fillStyle = gradiente;
    noStroke();

    let lado = this.tamaño ;
    quad(-lado/2, -lado/2, lado, -lado*1.3, lado, lado/2, -lado, lado/3);
    
    pop();
  }
}