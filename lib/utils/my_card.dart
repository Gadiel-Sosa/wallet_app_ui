import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expirationMonth;
  final int expirationYear;
  // ignore: prefer_typing_uninitialized_variables
  final color;
  const MyCard({
    super.key,
    required this.balance,
    required this.cardNumber,
    required this.expirationMonth,
    required this.expirationYear,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(20.0),
        //height: 200,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(17)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Balance',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Image.asset(
                  'lib/wallet/visa.png',
                  height: 50,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '\$$balance',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //*! Num. Tarjeta
                Text(
                  '$cardNumber',
                  style: TextStyle(color: Colors.white),
                ),
                //*! Vencimiento
                Text(
                  '$expirationMonth/$expirationYear',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
