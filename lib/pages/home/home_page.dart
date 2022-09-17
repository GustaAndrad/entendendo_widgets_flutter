// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

/*
  Simples HomePage para direcionar para as paginas de exemplos
  utilizando navegação nomeada (pushedNamed) e PopUp Menu Button ( Menu que fica
  localizado na area inferior direita da appbar )
*/

enum PopupMenuPages {
  container,
  rows_columns,
  media_query,
  layout_builder,
  botoes_rotacao_text,
  scrolls_single_child,
  list_view,
  dialogs,
  snackbar,
  forms,
  cidades,
  stack,
  bottomnavigatorbar,
  colors,
  materialBanner,
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          PopupMenuButton<PopupMenuPages>(
              onSelected: (PopupMenuPages valueSelected) {
            switch (valueSelected) {
              case PopupMenuPages.container:
                Navigator.of(context).pushNamed('/container');
                break;

              case PopupMenuPages.rows_columns:
                Navigator.of(context).pushNamed('/rows_columns');
                break;
              case PopupMenuPages.media_query:
                Navigator.of(context).pushNamed('/media_query');
                break;
              case PopupMenuPages.layout_builder:
                Navigator.of(context).pushNamed('/layout_builder');
                break;
              case PopupMenuPages.botoes_rotacao_text:
                Navigator.of(context).pushNamed('/botoes_rotacao_text');
                break;
              case PopupMenuPages.scrolls_single_child:
                Navigator.of(context)
                    .pushNamed('/scrolls/scrolls_single_child');
                break;
              case PopupMenuPages.list_view:
                Navigator.of(context).pushNamed('/scrolls/list_view');
                break;
              case PopupMenuPages.dialogs:
                Navigator.of(context).pushNamed('/dialogs');
                break;
              case PopupMenuPages.snackbar:
                Navigator.of(context).pushNamed('/snackbar');
                break;
              case PopupMenuPages.forms:
                Navigator.of(context).pushNamed('/forms');
                break;
              case PopupMenuPages.cidades:
                Navigator.of(context).pushNamed('/cidades');
                break;
              case PopupMenuPages.stack:
                Navigator.of(context).pushNamed('/stack');
                break;
              case PopupMenuPages.bottomnavigatorbar:
                Navigator.of(context).pushNamed('/bottomNavigatorBar');
                break;
              case PopupMenuPages.colors:
                Navigator.of(context).pushNamed('/colors');
                break;
              case PopupMenuPages.materialBanner:
                Navigator.of(context).pushNamed('/materialBanner');
                break;
            }
          }, itemBuilder: (BuildContext context) {
            return <PopupMenuItem<PopupMenuPages>>[
              const PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.container,
                child: Text('container'),
              ),
              const PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.rows_columns,
                child: Text('rows and columns'),
              ),
              const PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.media_query,
                child: Text('mediaQuery'),
              ),
              const PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.layout_builder,
                child: Text('layoutBuilder'),
              ),
              const PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.botoes_rotacao_text,
                child: Text('Botões e Rotação de texto'),
              ),
              const PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.scrolls_single_child,
                child: Text('SingleChildView'),
              ),
              const PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.list_view,
                child: Text('ListView'),
              ),
              const PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.dialogs,
                child: Text('Dialogs'),
              ),
              const PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.snackbar,
                child: Text('SnackBar'),
              ),
              const PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.forms,
                child: Text('Forms'),
              ),
              const PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.cidades,
                child: Text('Cidades'),
              ),
              const PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.stack,
                child: Text('Stack'),
              ),
              const PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.bottomnavigatorbar,
                child: Text('BottomNavigatorBar'),
              ),
              const PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.colors,
                child: Text('Colors'),
              ),
              const PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.materialBanner,
                child: Text('materialBanner'),
              ),
            ];
          })
        ],
      ),
      body: Container(),
    );
  }
}
