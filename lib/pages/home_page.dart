import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app_ui/utils/my_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //* PageController es un controlador para la vista de página
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            //* app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'My ',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Card',
                        style: TextStyle(
                          fontSize: 28,
                        ),
                      ),
                    ],
                  ),
                  //* plus botton (botón +)
                  Container(
                      padding: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                          color: Colors.pink[400], shape: BoxShape.circle),
                      child: Icon(Icons.add)),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),

            //* tarjetas
            // ignore: sized_box_for_whitespace
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                    balance: 4200.20,
                    cardNumber: 123456,
                    expirationMonth: 12,
                    expirationYear: 25,
                    color: Colors.deepPurple[200],
                  ),
                  MyCard(
                    balance: 3450.70,
                    cardNumber: 748290,
                    expirationMonth: 05,
                    expirationYear: 26,
                    color: Colors.lightBlue[200],
                  ),
                  MyCard(
                    balance: 22356.70,
                    cardNumber: 926016,
                    expirationMonth: 11,
                    expirationYear: 29,
                    color: Colors.pink[200],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            //* Cpount es dependiendo de el número de tarjetas
            //* SmoothPageIndicator es un widget que muestra un indicador de página suave ...
            //* controller es el controlador de la vista de página
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade700),
            )

            //* 3 botones --> send + pay + bill

            //* stats + trasnsactions
          ],
        ),
      ),
    );
  }
}
