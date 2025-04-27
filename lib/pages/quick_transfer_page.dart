import 'package:flutter/material.dart';
import 'package:wallet_app_ui/utils/trasnfer_contact.dart';

class QuickTransferPage extends StatelessWidget {
  const QuickTransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //* Barra superior de la pantalla
      appBar: AppBar(
        //* Título que aparece en la AppBar.
        title: Text('Quick Transfer'),
        //* Color de fondo de la AppBar.
        backgroundColor: Colors.pink[300],
      ),
      //* Color de fondo de la pantalla.
      backgroundColor: Colors.grey[200],
      //* Cuerpo principal de la pantalla.
      body: Padding(
        //* Margen interno
        padding: const EdgeInsets.all(16.0),
        //* Organiza los elementos en columna (de arriba hacia abajo).
        child: Column(
          children: [
            //* Tarjeta de contacto para transferir dinero a Ana López.
            TransferContactCard(
              name: 'Ana López',
              onSend: () {
                //* Cuando se presiona "Send", muestra un mensaje temporal (SnackBar) diciendo 'Transfer to Ana'.
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Transfer to Ana')),
                );
              },
            ),
            //* Tarjeta de contacto para transferir dinero a Carlos Ruiz.
            TransferContactCard(
              name: 'Carlos Ruiz',
              onSend: () {
                //* Cuando se presiona "Send", muestra un SnackBar diciendo 'Transfer to Carlos'.
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Transfer to Carlos')),
                );
              },
            ),
            TransferContactCard(
              name: 'Antonio Sosa',
              onSend: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Transfer to Antonio')),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
