// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

/*
  Esta pagina foi criada para mostrar uma forma de descobrir o tamanho da tela
  do device utilizando a classe MediaQuery
*/

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    print('Largura :  ${mediaQuery.size.width}');
    print('Altura : ${mediaQuery.size.height}');
    print('Orientação : ${mediaQuery.orientation}');
    print('status Bar : ${mediaQuery.padding.top}');
    print('Tamanho da AppBar : $kToolbarHeight');

    return Scaffold(
      appBar: AppBar(
        title: const Text('MediaQuery'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                color: Colors.red,
                width: mediaQuery.size.width,
                height: mediaQuery.size.height * .5 - mediaQuery.padding.top),
            Container(
                color: Colors.blue,
                width: mediaQuery.size.width,
                height:
                    mediaQuery.size.height * .5 - mediaQuery.padding.top - 27),
          ],
        ),
      ),
    );
  }
}
