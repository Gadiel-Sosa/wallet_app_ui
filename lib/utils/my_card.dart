import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  //* Variable que almacena el saldo (balance) de la tarjeta
  final double balance;
  //* Variable que almacena el número de la tarjeta.
  final int cardNumber;
  //* Variable que almacena el mes de vencimiento.
  final int expirationMonth;
  //* Variable que almacena el año de vencimiento.
  final int expirationYear;
  // ignore: prefer_typing_uninitialized_variables
  final color; //* Variable que almacena el color de la tarjeta
  const MyCard({
    //* Constructor de la clase MyCard que recibe los datos necesarios.
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
      //* Agrega un espacio horizontal a los lados del contenedor de la tarjeta.
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        width: 300, // *Ancho de la tarjeta.
        padding:
            const EdgeInsets.all(20.0), // *Espaciado interno de la tarjeta.

        //height: 200,
        //* Define el fondo y el borde redondeado de la tarjeta.
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(17)),
        //* Organiza todo el contenido de la tarjeta en una columna.
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //* Primera fila: "Balance" y el logo de Visa.
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
            //* Muestra el balance de la tarjeta en grande y en negrita.
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
            //* Segunda fila: número de tarjeta y fecha de vencimiento.
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
