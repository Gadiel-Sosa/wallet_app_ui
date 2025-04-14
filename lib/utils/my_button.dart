import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String myImagePath;
  final String imageText;

  const MyButton(
      {super.key, required this.myImagePath, required this.imageText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 30,
                  spreadRadius: 10,
                )
              ]),
          child: Center(
            child: Image.asset(myImagePath),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          imageText,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey[800]),
        )
      ],
    );
  }
}
