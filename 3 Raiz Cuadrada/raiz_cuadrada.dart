void main() {
  double numero = 25; // Cambia este valor para probar con otros números
  double precision = 0.00001; // Precisión deseada

  double resultado = sqrtAproximacion(numero, precision);
  print("La raíz cuadrada aproximada de $numero es $resultado");
}

double sqrtAproximacion(double numero, double precision) {
  if (numero < 0) {
    print("No se puede calcular la raíz cuadrada de un número negativo.");
    return -1;
  }

  double estimacion = numero / 2; // Estimación inicial

  while ((estimacion * estimacion - numero).abs() > precision) {
    estimacion = (estimacion + numero / estimacion) / 2;
  }

  return estimacion;
}

