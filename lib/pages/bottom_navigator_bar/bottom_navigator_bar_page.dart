// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:primeiro_projeto/pages/bottom_navigator_bar/page1.dart';
import 'package:primeiro_projeto/pages/bottom_navigator_bar/page2.dart';
import 'package:primeiro_projeto/pages/bottom_navigator_bar/page3.dart';

/*
  Esta pagina foi criada para mostrar o exemplo de uma barra de navigação que fica
  na parte inferior da tela
*/

class BottomNavigatorBarPage extends StatefulWidget {
  const BottomNavigatorBarPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigatorBarPage> createState() => _BottomNavigatorBarPageState();
}

class _BottomNavigatorBarPageState extends State<BottomNavigatorBarPage> {
  int indice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigatorBar'),
      ),
      // Enserido aqui logo apos a appBar
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: indice,
          onTap: (index) {
            setState(() {
              indice = index;
            });
          },
          items: const [
            //lista de items onde cada 'BottomNavigationBarItem' sera um botão da barra inferior de navegção.
            BottomNavigationBarItem(
                label: 'Pagina 1 ', icon: Icon(Icons.menu_book)),
            BottomNavigationBarItem(
                label: 'Pagina 2 ', icon: Icon(Icons.museum_rounded)),
            BottomNavigationBarItem(
                label: 'Pagina 3 ', icon: Icon(Icons.seven_mp)),
          ]),
      //no body se usa o 'IndexedStack' para navegar entre as paginas sem que uma sobreponhe a outra.
      body: IndexedStack(
        index: indice,
        children: const [Page1(), Page2(), Page3()],
      ),
    );
  }
}
