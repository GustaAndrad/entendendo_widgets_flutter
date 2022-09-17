// ignore_for_file: prefer_const_declarations, prefer_const_constructors

import 'package:flutter/material.dart';

/*
  Esta pagina foi criada para mostrar exemplos de formas de utilizar cores
*/

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //exemplos de uso de cores
    // final cor = Colors.cyan; (padrao)
    // final cor = Colors.cyan.withOpacity(0.5); (padrao com opacidade)
    // final cor = const Color.fromRGBO(0, 0, 255, 1); ( em RGB)
    final cor = Color(0XFF17599D); //Para valores em hexadecimal é obrigatorio
    //retirar o '#' e adicionar '0XFF' no inicio

    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors'),
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 400,
          color: cor,
        ),
      ),
    );
  }
}
