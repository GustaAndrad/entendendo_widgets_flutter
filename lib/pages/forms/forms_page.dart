// ignore_for_file: unused_local_variable, body_might_complete_normally_nullable, duplicate_ignore

import 'package:flutter/material.dart';

/*
  Esta pagina foi criada para mostrar exemplo de formulario
*/

class FormsPage extends StatefulWidget {
  const FormsPage({Key? key}) : super(key: key);

  @override
  State<FormsPage> createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  final formKey = GlobalKey<FormState>();
  final textEDC = TextEditingController();

  @override
  void dispose() {
    textEDC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Text(
                    'Faça seu login',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      shadows: <Shadow>[
                        Shadow(
                            blurRadius: 8,
                            offset: Offset(2, 2),
                            color: Colors.cyan)
                      ],
                    ),
                  ),
                ),
                TextFormField(
                  controller: textEDC,
                  maxLines: null,
                  decoration: InputDecoration(
                    labelText: 'Login',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(color: Colors.cyan),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(color: Colors.cyanAccent),
                    ),
                    labelStyle: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  // ignore: body_might_complete_normally_nullable
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo não preenchido';
                    }
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(color: Colors.cyan),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(color: Colors.cyanAccent),
                    ),
                    labelStyle: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  obscureText: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo não preenchido';
                    }
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(color: Colors.cyan),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(color: Colors.cyan),
                      ),
                    ),
                    value: 'Manter Logado',
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'opção nao escolhida';
                      }
                    },
                    items: const [
                      DropdownMenuItem(
                        value: 'Manter Logado',
                        child: Text('Manter Logado'),
                      ),
                      DropdownMenuItem(
                        value: 'Deslogar ao sair',
                        child: Text('Deslogar ao sair'),
                      ),
                    ],
                    onChanged: (String? newValue) {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.cyanAccent,
                      shadowColor: Colors.cyan,
                      padding: const EdgeInsets.all(10),
                      minimumSize: const Size(150, 25),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(60),
                        ),
                      ),
                    ),
                    onPressed: () {
                      var formValid = formKey.currentState?.validate() ?? false;
                      var message = 'Digite suas credenciais';

                      if (formValid) {
                        message = '${textEDC.text} esta logado!! ';
                      }
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(message),
                        ),
                      );
                    },
                    child: const Text(
                      'Entrar',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
