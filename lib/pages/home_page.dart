import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app_ui/utils/my_button.dart';
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
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Card',
                        style: TextStyle(
                          fontSize: 35,
                        ),
                      ),
                    ],
                  ),
                  //* plus botton (botón +)
                  Container(
                      padding: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                          color: Colors.pink[400], shape: BoxShape.circle),
                      child: Icon(
                        Icons.add,
                        color: Colors.black,
                      )),
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
              width: 440,
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
            ),
            SizedBox(
              height: 25,
            ),

            //* 3 botones --> send + pay + bill
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //* Send button
                  MyButton(
                      myImagePath: 'lib/wallet/send_money.png',
                      imageText: 'Send'),
                  //* pay button
                  MyButton(
                      myImagePath: 'lib/wallet/credit_card.png',
                      imageText: 'Pay'),
                  //* bill button
                  MyButton(
                      myImagePath: 'lib/wallet/bill.png', imageText: 'Bill'),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),

            //* stats + trasnsactions
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  //* Statistics
                  Row(
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
                            child: Image.asset('lib/status/statistic.png'),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sattistics',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Payments and Icome',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey[700]),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Icon(Icons
                          .arrow_forward_ios) //*Me quedé aquí antes de encapsular todo esto
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//* me quedé aquí al crear las tarjetas
