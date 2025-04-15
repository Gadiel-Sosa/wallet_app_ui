// lib/widgets/transfer_contact_card.dart
import 'package:flutter/material.dart';

class TransferContactCard extends StatelessWidget {
  final String name;
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
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(Icons.person, size: 40, color: Colors.pink[300]),
          SizedBox(width: 16),
          Expanded(child: Text(name, style: TextStyle(fontSize: 18))),
          ElevatedButton(
            onPressed: onSend,
            style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
            child: Text('Enviar'),
          )
        ],
      ),
    );
  }
}
