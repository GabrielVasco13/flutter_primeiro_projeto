// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

enum PopupMenuPages { 
  container,
  rows_columns
   }

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                )
            ];
          })
        ],
      ),
      body: Container(),
    );
  }
}
