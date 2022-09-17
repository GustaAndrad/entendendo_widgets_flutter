// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

/*
  Esta pagina foi criada para mostrar exemplos de SnackBar, sendo simples (sem 
  botao acrescentado) e SnackBar com Action ( onde acrescenta um botão com alguma funcionalidade)
  SnackBar é um simples popup com uma mensagem que sobe da parte inferior do device
*/

class SnackbarPage extends StatelessWidget {
  const SnackbarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Exemplos de SnackBar',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                const snackbar = SnackBar(
                  content: Text(
                    'Exemplo simples',
                    style: TextStyle(color: Colors.black),
                  ),
                  backgroundColor: Colors.cyan,
                );
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
              child: const Text('Simple SnackBar'),
            ),
            ElevatedButton(
              onPressed: () {
                final snackbar = SnackBar(
                  content: const Text(
                    'Exemplo SnackBar c/ Action',
                    style: TextStyle(color: Colors.black),
                  ),
                  backgroundColor: Colors.cyan,
                  action: SnackBarAction(
                      label: 'Desfazer',
                      onPressed: () {
                        print('clicado');
                      }),
                );

                ScaffoldMessenger.of(context).showSnackBar(snackbar);
                ScaffoldMessenger.of(context).removeCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
              child: const Text('Action SnackBar'),
            ),
          ],
        ),
      ),
    );
  }
}
