//tp3
//Malena Escobar Escudero
//Comisión 5
//https://youtu.be/ohOy437pIvc

PImage cuadrado;
int cantidad;
float inicioX, inicioY, maxTam, Tamaño, Tamaño2;
color []colors;

void setup () {
  size (800, 400);
  cuadrado = loadImage ("cuadrado.jpg");
  cuadrado ();
  dibujarCuadrados();
}

void draw () {
  image (cuadrado, 0, 0, 400, 400 );
}

void mousePressed () {
  cuadrado ();
  dibujarCuadrados();
}

void keyPressed() {
  if (key == 'a' || key == 'A') {
    cantidad = constrain(cantidad + 1, 1, 37);
    Tamaño = maxTam / cantidad;
    dibujarCuadrados();
  } else if (key == 'd' || key == 'D') {
    cantidad = constrain(cantidad - 1, 1, 37);
    Tamaño = maxTam / cantidad;
    dibujarCuadrados();
  }
}
