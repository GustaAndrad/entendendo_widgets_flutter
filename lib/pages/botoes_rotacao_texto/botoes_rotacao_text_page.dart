// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

/*
  Esta pagina foi criada para mostrar exemplos de crianção de botões e tambem
  um widget para rotacionar o conteudo dele.
*/

class BotoesRotacaoTextPage extends StatelessWidget {
  const BotoesRotacaoTextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botões e Rotação de texto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // para centralizar a column no centro
          children: [
            Row(
              children: [
                RotatedBox(
                  // Widget para funcionalidade de rodar o conteudo
                  quarterTurns: -1, // int para rotação.
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.red,
                    child: const Text('Texto rotacionado'),
                  ),
                ),
                const Icon(Icons.rotate_90_degrees_ccw),
              ],
            ),
            TextButton(
              //Exemplo de um texto 'clicavel'
              onPressed: () {},
              style: TextButton.styleFrom(
                primary: Colors.red,
                padding: const EdgeInsets.all(10),
                minimumSize: const Size(50, 10),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(60),
                  ),
                ),
              ),
              child: const Text('Salvar'),
            ),
            IconButton(
              //exemplo de um icone 'clicavel'
              onPressed: () {},
              icon: const Icon(Icons.exit_to_app),
            ),
            const SizedBox(
                height: 10), //sizedBox feito apenas para separar widgets
            ElevatedButton(
              //exemplo de um botão padrao com algumas costumização
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shadowColor: Colors.blue,
                minimumSize: const Size(120, 50),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
              ),
              child: const Text('Salvar'),
            ),
            const SizedBox(
                height: 10), //sizedBox feito apenas para separar widgets
            ElevatedButton.icon(
              //exemlo de botão padrao com icone junto para compor
              onPressed: () {},
              icon: const Icon(Icons.airplanemode_active),
              label: const Text('Modo Avião'),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shadowColor: Colors.blue,
                minimumSize: const Size(120, 50),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
              ),
            ),
            const SizedBox(
                height: 10), //sizedBox feito apenas para separar widgets
            ElevatedButton(
              //botão com costumização de hover e pressed
              onPressed: () {},
              style: ButtonStyle(
                shadowColor: MaterialStateProperty.all(Colors.blue),
                // Exemplo abaixo setando minimumSize sem interação
                // minimumSize: MaterialStateProperty.all(
                //   const Size(120, 50),
                // ),
                minimumSize: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.pressed)) {
                      return const Size(180, 80);
                    }
                    return const Size(120, 50);
                  },
                ),
                backgroundColor: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.black;
                    } else if (states.contains(MaterialState.hovered)) {
                      return Colors.amber;
                    }
                    return Colors.red;
                  },
                ),
              ),
              child: const Text('Botao com Hover n pressed'),
            ),
            InkWell(
              //simples botão/texte clicavel sem nenhum tipo de costumização
              onTap: () {},
              child: const Text('InkWell Button'),
            ),
            GestureDetector(
              //Botão que detecta movimentos ( gestos )
              child: const Text('Gesture Detector'),
              onTap: () => print('Gesture clicado'),
              onVerticalDragStart: (_) => print('Start $_'),
            ),
            Container(
              //Container costumizado para transformar em um botão.
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.blue, Colors.purple],
                ),
                borderRadius: BorderRadius.circular(50),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 10,
                    offset: Offset(0, 5),
                    color: Colors.red,
                  ),
                ],
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () {},
                child: const Center(
                  child: Text(
                    'Botao Personalizado',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
