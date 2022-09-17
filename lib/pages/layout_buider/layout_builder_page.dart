// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

/*
  Esta pagina foi criada para mostrar a utilização do LayoutBuilder, que tem como
  caracteristica ser mais responsivel e identificar o tamanho que esta sendo utilizado
*/

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LayoutBuilder'),
      ),
      body: Center(
        child: LayoutBuilder(builder: (context, constraints) {
          return Column(
            children: [
              Container(
                color: Colors.red,
                width: constraints.maxWidth * 0.5,
                height: constraints.maxHeight * 0.5,
              ),
              Container(
                color: Colors.blue,
                width: constraints.maxWidth,
                height: constraints.maxHeight * 0.5,
              ),
            ],
          );
        }),
      ),
    );
  }
}
