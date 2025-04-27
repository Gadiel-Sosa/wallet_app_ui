import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app_ui/pages/quick_transfer_page.dart';
import 'package:wallet_app_ui/pages/settings_page.dart';
import 'package:wallet_app_ui/utils/my_button.dart';
import 'package:wallet_app_ui/utils/my_card.dart';
import 'package:wallet_app_ui/utils/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

//* Clase privada que define el estado de HomePage.
class _HomePageState extends State<HomePage> {
  //* PageController es un controlador para la vista de página
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    //* estructura clásica de la app
    return Scaffold(
      //* Define el color de fondo de la pantalla.
      backgroundColor: Colors.grey[300],
      //* Define un botón flotante grande en la pantalla.
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {
          //* Cuando se presiona, navega a la página QuickTransferPage.
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const QuickTransferPage()));
        },
        //* Da forma circular al botón flotante.
        shape: const CircleBorder(),
        //* Color de fondo del botón flotante.
        backgroundColor: Colors.pink,
        //* Icono de dinero dentro del botón.
        child: Icon(
          Icons.monetization_on,
          size: 32,
          color: Colors.white,
        ),
      ),
      // *Ubica el botón flotante en el centro inferior de la pantalla.
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //* Crea una barra de navegación inferior.
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //* Primer botón: volver a la página inicial (home).
              IconButton(
                  onPressed: () {
                    //* Anima el cambio a la primera página del PageView.
                    _controller.animateToPage(0,
                        //* Cambia a la página 0 (la primera) del PageView. */
                        //* La animación dura 300 milisegundos y usa una curva de animación suave.
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut);
                    // *Muestra un pequeño mensaje (SnackBar) indicando que se volvió al home.
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
              //* Segundo botón: navegación a la página de configuración (settings).
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
      // *Cuerpo principal de la pantalla (body).
      body: SafeArea(
        child: Column(
          children: [
            //* app bar
            // *Espacio del encabezado (App bar personalizado).
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //* Texto "My Card" separado en dos Texts para aplicar diferentes estilos.
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
                  // *Botón de agregar (ícono de + en un círculo).
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
            //* Espacio vertical entre el app bar y las tarjetas.
            SizedBox(
              height: 25,
            ),
            //* Contenedor para las tarjetas de crédito en un carrusel (PageView).

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

            //* Indicador de página que muestra en qué tarjeta estás.
            //* Widget que muestra un indicador de páginas (puntitos) sincronizado con el PageView.
            SmoothPageIndicator(
              //* Usa el mismo controlador del PageView para saber en qué página estamos.
              controller: _controller,
              // *Número total de páginas que hay en el PageView (en este caso, 3 tarjetas).
              count: 3,
              //* Efecto visual de los puntitos: el punto activo se expande y cambia de tamaño.
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade700),
              //* Color del punto activo (el de la página actual).
            ),
            SizedBox(
              height: 40,
            ),

            //* Fila de botones (Send, Pay, Bill).

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
            //* Lista de opciones adicionales (Statistics, Transactions, Investments).

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
