import 'package:flutter/material.dart';

/*
  Esta pagina foi criada para mostrar o comportamento de um widget Row, e Column
*/

class RowsColumnsPage extends StatelessWidget {
  const RowsColumnsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows and Columns'),
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        color: Colors.blueGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              color: Colors.amber,
              child: Column(
                children: const [
                  Text('Columns', style: TextStyle(color: Colors.black)),
                  Text('elemento 1', style: TextStyle(color: Colors.black)),
                  Text('elemento 2', style: TextStyle(color: Colors.black)),
                  Text('elemento 3', style: TextStyle(color: Colors.black)),
                  Text('elemento 4', style: TextStyle(color: Colors.black)),
                ],
              ),
            ),
            Container(
              color: Colors.red,
              child: Row(
                children: const [
                  Text('Rows : '),
                  Text('elemento 1'),
                  Text('elemento 2'),
                  Text('elemento 3'),
                  Text('elemento 4'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
