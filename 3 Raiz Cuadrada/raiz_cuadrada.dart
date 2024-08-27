void main() {
  double number = 25; // Cambia este valor para probar con otros números
  double precision = 0.00001; // Precisión deseada

  double result = sqrtApproximation(number, precision);
  print("La raíz cuadrada aproximada de $number es $result");
}

double sqrtApproximation(double number, double precision) {
  if (number < 0) {
    print("No se puede calcular la raíz cuadrada de un número negativo.");
    return -1;
  }

  double guess = number / 2; // Estimación inicial

  while ((guess * guess - number).abs() > precision) {
    guess = (guess + number / guess) / 2;
  }

  return guess;
}

