void main(List<String> arguments) {
  List<int> listaNumeros = [1, 2, 3, 4, 5];
  String resultado = verificarOrden(listaNumeros);
  print(resultado);
}

String verificarOrden(List<int> numeros) {
  bool ascendente = true;
  bool descendente = true;

  for (int i = 0; i < numeros.length - 1; i++) {
    if (numeros[i] < numeros[i + 1]) {
      descendente = false;
    } else if (numeros[i] > numeros[i + 1]) {
      ascendente = false;
    }
  }

  if (ascendente) {
    return "La lista está ordenada de forma ascendente.";
  } else if (descendente) {
    return "La lista está ordenada de forma descendente.";
  } else {
    return "La lista no está ordenada.";
  }
}
