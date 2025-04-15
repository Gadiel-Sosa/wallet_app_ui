import 'package:flutter/material.dart';
import 'package:wallet_app_ui/utils/trasnfer_contact.dart';

class QuickTransferPage extends StatelessWidget {
  const QuickTransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quick Transfer'),
        backgroundColor: Colors.pink[300],
      ),
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TransferContactCard(
              name: 'Ana López',
              onSend: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Transfer to Ana')),
                );
              },
            ),
            TransferContactCard(
              name: 'Carlos Ruiz',
              onSend: () {
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
