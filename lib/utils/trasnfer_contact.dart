// lib/widgets/transfer_contact_card.dart
import 'package:flutter/material.dart';

class TransferContactCard extends StatelessWidget {
  //* Variable que guarda el nombre de la persona a la que se va a transferir.
  final String name;
  //* Variable que guarda la función que se ejecutará cuando se presione el botón "Enviar".
  final VoidCallback onSend;

  const TransferContactCard({
    super.key,
    required this.name,
    required this.onSend,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      //* Margen inferior para separar este contenedor de otros elementos debajo.
      margin: EdgeInsets.only(bottom: 16),
      //* Decoración del contenedor: color de fondo y bordes redondeados.
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      //* Contenido del contenedor: fila con icono, nombre y botón.
      child: Row(
        children: [
          //* Icono de persona.

          Icon(Icons.person, size: 40, color: Colors.pink[300]),
          SizedBox(width: 16),
          //* Texto con el nombre de la persona, expandido para ocupar el espacio disponible.
          Expanded(child: Text(name, style: TextStyle(fontSize: 18))),
          //* Botón para enviar dinero.
          ElevatedButton(
            onPressed: onSend, //* Ejecuta la función recibida al presionar.
            style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
            child: Text('Enviar'), //* Texto del botón.
          )
        ],
      ),
    );
  }
}
