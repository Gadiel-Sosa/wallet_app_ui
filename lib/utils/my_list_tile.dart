import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  //* Ruta de la imagen que se mostrará en el icono de la tile.
  final String pathImage;
  //* Título principal de la tile.
  final String tileName;
  //* Subtítulo que describe más información debajo del título.
  final String tileSubName;
  const MyListTile(
      {super.key,
      required this.pathImage,
      required this.tileName,
      required this.tileSubName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            //* Parte izquierda del Row: imagen + textos.
            children: [
              //* Icon
              //* Icono dentro de un contenedor decorado.
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12)),
                height: 80,
                padding: const EdgeInsets.all(12),
                child: Image.asset(pathImage),
              ),
              SizedBox(
                width: 20,
              ),
              //* Columna que contiene el título y el subtítulo.
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    //* Texto principal (nombre de la opción).
                    tileName,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    //* Subtítulo (descripción breve).
                    tileSubName,
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  ),
                ],
              ),
            ],
          ),
          //* Icono de flecha que indica que se puede navegar a otra página o sección.
          Icon(Icons
              .arrow_forward_ios) //*Me quedé aquí antes de encapsular todo esto
        ],
      ),
    );
  }
}
