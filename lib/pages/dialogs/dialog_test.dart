import 'package:flutter/material.dart';

/*
  Classe para criar um exemplo de um dialog feito do zero (sem padrao, totalmente costumizado)
*/

class DialogTest extends Dialog {
  DialogTest(BuildContext context, {Key? key})
      : super(
            key: key,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: SizedBox(
                width: 300,
                height: 300,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text('Titulo do Dialog'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('Fechar Dialog'),
                    ),
                  ],
                )));
}
