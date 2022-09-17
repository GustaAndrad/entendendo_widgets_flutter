import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:primeiro_projeto/pages/botoes_rotacao_texto/botoes_rotacao_text_page.dart';
import 'package:primeiro_projeto/pages/bottom_navigator_bar/bottom_navigator_bar_page.dart';
import 'package:primeiro_projeto/pages/cidades/cidades_page.dart';
import 'package:primeiro_projeto/pages/colors/colors_page.dart';
import 'package:primeiro_projeto/pages/container/container_page.dart';
import 'package:primeiro_projeto/pages/dialogs/dialogs_page.dart';
import 'package:primeiro_projeto/pages/forms/forms_page.dart';
import 'package:primeiro_projeto/pages/home/home_page.dart';
import 'package:primeiro_projeto/pages/layout_buider/layout_builder_page.dart';
import 'package:primeiro_projeto/pages/material_banner/material_banner_page.dart';
import 'package:primeiro_projeto/pages/media_query/media_query_page.dart';
import 'package:primeiro_projeto/pages/rows_columns/rows_columns_page.dart';
import 'package:primeiro_projeto/pages/scrolls/listview_page.dart';
import 'package:primeiro_projeto/pages/scrolls/singlechildscrollview_page.dart';
import 'package:primeiro_projeto/pages/snackbar/snackbar_page.dart';
import 'package:primeiro_projeto/pages/stack/stack_page.dart';

void main() {
  runApp(
    //DevicePreview para fazer testes em diferentes tipos de celulares
    // para desativar basta colocar enable: false
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (_) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Primeiro Projeto para estudo',
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        '/': (_) => const HomePage(),
        '/container': (_) => const ContainerPage(),
        '/rows_columns': (_) => const RowsColumnsPage(),
        '/media_query': (_) => const MediaQueryPage(),
        '/layout_builder': (_) => const LayoutBuilderPage(),
        '/botoes_rotacao_text': (_) => const BotoesRotacaoTextPage(),
        '/scrolls/scrolls_single_child': (_) =>
            const SinglechildscrollviewPage(),
        '/scrolls/list_view': (_) => const ListviewPage(),
        '/dialogs': (_) => const DialogsPage(),
        '/snackbar': (_) => const SnackbarPage(),
        '/forms': (_) => const FormsPage(),
        '/cidades': (_) => const CidadesPage(),
        '/stack': (_) => const StackPage(),
        '/bottomNavigatorBar': (_) => const BottomNavigatorBarPage(),
        '/colors': (_) => const ColorsPage(),
        '/materialBanner': (_) => const MaterialBannerPage(),
      },
    );
  }
}
