import 'package:flutter/material.dart';

/*
  Esta pagina foi criada para mostrar exemplo do Single Child Scroll View
  este widget é mais utilizado para garantir que a aplicação nao quebre por nao caber
  todos os elementos na tela.
*/

class SinglechildscrollviewPage extends StatelessWidget {
  const SinglechildscrollviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SingleChildScrollView'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 400,
              color: Colors.black38,
              child: const Text('Post number 1'),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 400,
              color: Colors.black87,
              child: const Text('Post number 2'),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 400,
              color: Colors.black38,
              child: const Text('Post number 3'),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 400,
              color: Colors.black87,
              child: const Text('Post number 4'),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 400,
              color: Colors.black38,
              child: const Text('Post number 5'),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 400,
              color: Colors.black38,
              child: const Text('Post number 6'),
            ),
          ],
        ),
      ),
    );
  }
}
