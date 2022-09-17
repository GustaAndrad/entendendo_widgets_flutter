// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

/*
  Esta pagina foi criada para mostrar exemplos do material banner, que é igual a
  uma snackBar, porem é mostrado um alerta na parte superior do app
*/

class MaterialBannerPage extends StatelessWidget {
  const MaterialBannerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Banner'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Exemplos de Material Banner',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                final materialBanner = MaterialBanner(
                  content: const Text(
                    'Exemplo simples',
                    style: TextStyle(color: Colors.black),
                  ),
                  backgroundColor: Colors.cyan,
                  actions: [
                    TextButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .hideCurrentMaterialBanner();
                        },
                        child: const Text('Fechar'))
                  ],
                );
                ScaffoldMessenger.of(context)
                    .showMaterialBanner(materialBanner);

                // O Material Banner ao contrario do nackBar, nao tem o 'hide'
                // de forma automatica, uma opção de implementar esta função,
                // seria com o codigo abaixo ( future.delayed)
                Future.delayed(const Duration(seconds: 2), () {
                  ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                });
              },
              child: const Text('Teste Material Banner'),
            ),
          ],
        ),
      ),
    );
  }
}
