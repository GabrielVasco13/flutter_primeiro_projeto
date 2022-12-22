// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/botoes_rota%C3%A7%C3%A3o_texto/botoes_rotacao_texto_page.dart';
import 'package:flutter_primeiro_projeto/pages/container/container_page.dart';
import 'package:flutter_primeiro_projeto/pages/dialogs/dialogs_page.dart';
import 'package:flutter_primeiro_projeto/pages/form/form_page.dart';
import 'package:flutter_primeiro_projeto/pages/home/home_page.dart';
import 'package:flutter_primeiro_projeto/pages/layout_builder/layout_builder_page.dart';
import 'package:flutter_primeiro_projeto/pages/media_query/media_query_pages.dart';
import 'package:flutter_primeiro_projeto/pages/rows_columns/rows_column_page.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_primeiro_projeto/pages/scrolls/listview_page.dart';
import 'package:flutter_primeiro_projeto/pages/scrolls/singlechildscrollview_pages.dart';
import 'package:flutter_primeiro_projeto/pages/snackbar/snackbar_page.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (_) => MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nubank sem api',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple[700],
        primaryColorLight: Colors.amber,
        primaryColorDark: Colors.blueGrey[700],
        
        // fontFamily: 'Roboto', font de texto padrão

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
          )
        )

      ),
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      routes: {
        '/': (_) => HomePage(),
        '/container': (_) => ContainerPage(),
        '/rows_columns': (_) => RowsColumnPage(),
        '/media_query': (_) => MediaQueryPages(),
        '/layout_builder': (_) => LayoutBuilderPage(),
        '/botoes_rotacao_texto': (_) => BotoesRotacaoTextoPage(),
        '/scrolls/single_child': (_) => SinglechildscrollviewPages(),
        '/scrolls/listview_page': (_) => ListviewPage(),
        '/dialogs': (_) => DialogsPage(),
        '/snackbar': (_) => SnackbarPage(),
        '/form': (_) => FormPage(),
      },
    );
  }
}
