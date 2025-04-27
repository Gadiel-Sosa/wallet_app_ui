import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  //* Variable que guarda la ruta de la imagen que se va a mostrar.
  final String myImagePath;
  //* Variable que guarda el texto que acompañará a la imagen.
  final String imageText;
//* Constructor de la clase MyButton que requiere una imagen y un texto.
  const MyButton(
      {super.key, required this.myImagePath, required this.imageText});

  @override
  Widget build(BuildContext context) {
    return Column(
      //* Organiza el contenido (imagen + texto) en una columna vertical.
      children: [
        //* Contenedor principal que contiene la imagen.
        Container(
          height: 90, //* Altura del contenedor.
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.grey[100], //* Color de fondo.
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                //* Efecto de sombra alrededor del contenedor.
                BoxShadow(
                  color: Colors.grey.shade400, //* Color de la sombra.
                  blurRadius: 30, //* Qué tanto se difumina la sombra.
                  spreadRadius: 10, //* Qué tanto se expande la sombra.
                )
              ]),
          //* Centra la imagen dentro del contenedor.
          child: Center(
            child: Image.asset(myImagePath),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        //* Texto debajo de la imagen.
        Text(
          imageText, //* Muestra el texto recibido.
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey[800]),
        )
      ],
    );
  }
}
