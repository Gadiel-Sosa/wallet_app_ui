import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app_ui/pages/settings_page.dart';
import 'package:wallet_app_ui/utils/my_button.dart';
import 'package:wallet_app_ui/utils/my_card.dart';
import 'package:wallet_app_ui/utils/my_list_tile.dart';

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
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {},
        shape: const CircleBorder(),
        backgroundColor: Colors.pink,
        child: Icon(
          Icons.monetization_on,
          size: 32,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    _controller.animateToPage(0,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Back to home'),
                        duration: Duration(seconds: 1),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.home,
                    size: 40,
                    color: Colors.pink[300],
                  )),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SettingsPage()),
                    );
                  },
                  icon: Icon(
                    Icons.settings,
                    size: 40,
                    color: Colors.grey[600],
                  ))
            ],
          ),
        ),
      ),
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
                    color: Colors.deepPurple[400],
                  ),
                  MyCard(
                    balance: 3450.70,
                    cardNumber: 748290,
                    expirationMonth: 05,
                    expirationYear: 26,
                    color: Colors.red[400],
                  ),
                  MyCard(
                    balance: 22356.70,
                    cardNumber: 926016,
                    expirationMonth: 11,
                    expirationYear: 29,
                    color: Colors.black,
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
              height: 40,
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
              height: 40,
            ),

            //* stats + trasnsactions
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  //* Statistics
                  MyListTile(
                      pathImage: 'lib/status/statistic.png',
                      tileName: 'Statistics',
                      tileSubName: 'Payments and income'),

                  //* Transactions
                  MyListTile(
                      pathImage: 'lib/status/cash-flow.png',
                      tileName: 'Transactions',
                      tileSubName: 'Transactions history'),
                  MyListTile(
                      pathImage: 'lib/status/el-tiempo-es-dinero.png',
                      tileName: 'Investments',
                      tileSubName: 'Your money working for you'),
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
