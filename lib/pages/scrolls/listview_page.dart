import 'package:flutter/material.dart';

/*
  Esta pagina foi criada para mostrar exemplo de uma ListView
  A listview tem como peculiaridade carregar uma quantidade menor de items na lista
  por vez, para caso a lista for muito grande, nao sobregarregar o device carregando 
  a lista inteira de uma unica vez.
*/

class ListviewPage extends StatelessWidget {
  const ListviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
      ),
      body: ListView.separated(
        itemCount: 500,
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.purple,
          );
        },
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('User $index'),
            subtitle: const Text('Testando o listView'),
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://media.istockphoto.com/vectors/user-icon-flat-isolated-on-white-background-user-symbol-vector-vector-id1300845620?k=20&m=1300845620&s=612x612&w=0&h=f4XTZDAv7NPuZbG0habSpU0sNgECM0X7nbKzTUta3n8='),
            ),
            trailing: const Icon(Icons.edit),
          );
        },
      ),
    );
  }
}
