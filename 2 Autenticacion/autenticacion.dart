import 'dart:io';

void main(List<String> arguments) {
  String usuario = "augusto";
  String contrasena = "123456";

  print("Ingrese su nombre de usuario:");
  String? username = stdin.readLineSync();

  print("Ingrese su contraseña:");
  String? password = stdin.readLineSync();

  if (username == usuario && password == contrasena) {
    print("¡Autenticación exitosa! Bienvenido, $username.");
  } else {
    print("Credenciales incorrectas. Inténtelo de nuevo.");
  }
}
