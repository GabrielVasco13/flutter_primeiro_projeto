// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

enum PopupMenuPages { container }

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
        actions: [
          PopupMenuButton<PopupMenuPages>(
            icon: Icon(Icons.restaurant_menu),
            tooltip: 'Selecione o seu restaurante',
            onSelected: (PopupMenuPages valueSelected) {
              switch (valueSelected) {
                case PopupMenuPages.container:
                  Navigator.of(context).pushNamed('/container');
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
            return <PopupMenuItem<PopupMenuPages>>[
              PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.container,
                child: Text('Container'),
              )
            ];
          })
        ],
      ),
      body: Container(),
    );
  }
}
