import 'package:flutter/material.dart';
import 'package:wallet_app_ui/pages/home_page.dart';

//* Función principal de Dart, el punto de inicio de la aplicación.
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    //* Esta propiedad oculta la etiqueta de "debug"
    //* Define cuál será la primera pantalla que se mostrará al abrir la app
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
