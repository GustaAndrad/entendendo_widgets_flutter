import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:primeiro_projeto/pages/cidades/model/cidades.dart';

/*
  Esta pagina foi criada para mostrar exemplo de uma leitura de um arquivo no
  formate Json
*/

class CidadesPage extends StatefulWidget {
  const CidadesPage({Key? key}) : super(key: key);

  @override
  State<CidadesPage> createState() => _CidadesPageState();
}

class _CidadesPageState extends State<CidadesPage> {
  var cidades = <Cidade>[];

  @override
  void initState() {
    super.initState();
    _loadCities();
  }

  Future<void> _loadCities() async {
    final cidadesJson = await rootBundle.loadString('assets/cidades.json');
    setState(() {
      var cidadesList = json.decode(cidadesJson);
      cidades =
          cidadesList.map<Cidade>((city) => Cidade.fromMap(city)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cidades from .Json'),
      ),
      body: ListView.separated(
        itemCount: cidades.length,
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.cyan,
          );
        },
        itemBuilder: (context, index) {
          var cidade = cidades[index];
          return ListTile(
            title: Text(cidade.cidade),
            subtitle: Text(cidade.estado),
            trailing: const Icon(Icons.location_city),
          );
        },
      ),
    );
  }
}
