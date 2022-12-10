// ignore_for_file: prefer_const_constructors, constant_identifier_names

import 'package:flutter/material.dart';

enum PopupMenuPages { 
  container,
  rows_columns,
  media_query,
   }

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    final statusBar = mediaQuery.padding.top;
    final heightBody = mediaQuery.size.height - statusBar - kToolbarHeight;

    print(heightBody);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Nusbank'),
        backgroundColor: Colors.purple[700],
        actions: [
          PopupMenuButton<PopupMenuPages>(
            icon: Icon(Icons.insert_chart_outlined_sharp),
            tooltip: 'Selecione os seus dados',
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
              }
            },
            itemBuilder: (BuildContext context) {
            return <PopupMenuItem<PopupMenuPages>>[
              PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.container,
                child: Text('Opções foda'),
              ),
              PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.rows_columns,
                child: Text('Rows & Columns'),
                ),
              PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.media_query,
                child: Text('MediaQuery'),
                )
            ];
          })
        ],
      ),
      body: 
      Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.purple[100],
              width: mediaQuery.size.width , //tamanho
              height: heightBody, //largura
            ),
          ]
        ),
      )
    );
  }
}
