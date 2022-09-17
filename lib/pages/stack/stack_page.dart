import 'package:flutter/material.dart';

/*
  Esta pagina foi criada para mostrar o comportamento do widget 'Stack' onde tem
  sua peculiaridade de empilhar os children,ficando livre o posicionamento ao
   contrario da coloumn ou row que organiza automaticamente.
*/

class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://images2.alphacoders.com/546/546678.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            color: Colors.black38,
          ),
          Container(
            alignment: Alignment.center,
            width: 600,
            height: 50,
            color: Colors.black54,
            child: const Text(
              'About the city',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 48,
            left: 10,
            right: 10,
            child: Card(
              shadowColor: Colors.white30,
              elevation: 6,
              color: Colors.black54,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 12.0),
                    child: Text(
                      'New York',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'A cidade de Nova York compreende 5 distritos situados no encontro do rio Hudson com o Oceano Atlântico. No centro da cidade fica Manhattan, um distrito com alta densidade demográfica que está entre os principais centros comerciais, financeiros e culturais do mundo. Entre seus pontos emblemáticos, destacam-se arranha-céus, como o Empire State Building, e o enorme Central Park. O teatro da Broadway fica em meio às luzes de neon da Times Square.',
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
