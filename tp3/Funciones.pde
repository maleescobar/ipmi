void cuadrado () {
  cantidad = 37; // Cantidad de cuadrados
  inicioX = 600; // Posición inicial en x (en la mitad derecha)
  inicioY = 200; // Posición inicial en y (mitad de la altura)
  maxTam = 400; // Tamaño máximo del cuadrado más grande
  Tamaño2 = maxTam / cantidad; // Tamaño entre cada cuadrado
  colors = new color [] {
    color(255, 30, 30), color(200, 136, 255), color(255, 30, 30), color(180, 100, 255),
    color(255, 30, 30), color(170, 20, 255), color(255, 30, 30), color(255, 98, 0),
    color(255, 30, 30), color(255, 150, 0), color(255, 30, 30), color(255, 209, 116),
    color(255, 30, 30), color(116, 179, 255), color(255, 30, 30), color(91, 121, 180),
    color(255, 30, 30), color(83, 90, 173), color(255, 30, 30), color(255, 70, 0),
    color(255, 30, 30), color(255, 120, 0), color(255, 30, 30), color(255, 140, 0),
    color(255, 30, 30), color(40, 160, 131), color(255, 30, 30), color(3, 147, 112), color(255, 30, 30),
    color(3, 175, 73), color(255, 30, 30), color(250, 71, 119), color(255, 30, 30),
    color(250, 60, 80), color(255, 30, 30), color(250, 60, 90), color(255, 30, 30)
  };
}

void dibujarCuadrados () {
  noStroke ();
  for (int i = 0; i < cantidad; i++) {
    fill(colors[i % colors.length]);
    float Tamaño = calcularTamaño(i);
    rect(inicioX - Tamaño / 2, inicioY - Tamaño / 2, Tamaño, Tamaño);
    // Cambiar colores
    for (int j = 0; j < 10; j++) {
      fill(random(180, 255), random(50, 180), random(50, 100));
      rect(inicioX - Tamaño / 2, inicioY - Tamaño / 2, Tamaño, Tamaño);
    }
  }
}

float calcularTamaño(int index) {
  return maxTam - index * Tamaño2;
}
