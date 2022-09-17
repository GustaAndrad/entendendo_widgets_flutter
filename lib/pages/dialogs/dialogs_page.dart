// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:primeiro_projeto/pages/dialogs/dialog_test.dart';

/*
  Esta pagina foi criada para mostrar exemplos de dialogs
*/

class DialogsPage extends StatelessWidget {
  const DialogsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (_) {
                        return DialogTest(context);
                      });
                },
                child: const Text('Dialog Custom')),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return SimpleDialog(
                          title: const Text('Simple dialog(titulo)'),
                          contentPadding: const EdgeInsets.all(15),
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text('Descrição do Dialog'),
                            ),
                            TextButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: const Text('Fechar Dialog'),
                            )
                          ],
                        );
                      });
                },
                child: const Text('SimpleDiaLog')),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                            title: const Text('Alert dialog'),
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text('Tem certeza disso ??? '),
                                  ),
                                ],
                              ),
                            ),
                            actions: [
                              TextButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: const Text('Cancelar')),
                              TextButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: const Text('Confirmar')),
                            ]);
                      });
                },
                child: const Text('Alert Dialog')),
            ElevatedButton(
                onPressed: () async {
                  final selectedTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  print('O horario selecionado foi $selectedTime');
                },
                child: const Text('Time Picker')),
            ElevatedButton(
                onPressed: () async {
                  final selectedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2500),
                  );
                  print('O horario selecionado foi $selectedDate');
                },
                child: const Text('Date Picker')),
          ],
        ),
      ),
    );
  }
}
