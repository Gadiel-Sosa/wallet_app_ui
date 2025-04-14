import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String pathImage;
  final String tileName;
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
            children: [
              //* Icon
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tileName,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    tileSubName,
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  ),
                ],
              ),
            ],
          ),
          Icon(Icons
              .arrow_forward_ios) //*Me quedé aquí antes de encapsular todo esto
        ],
      ),
    );
  }
}
