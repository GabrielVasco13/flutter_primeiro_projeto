// ignore_for_file: prefer_const_constructors, constant_identifier_names

import 'package:flutter/material.dart';

enum PopupMenuPages { 
    container,
    rows_columns,
    media_query,
    layout_builder,
    botoes_rotacao_texto_page,
    scrolls_single_child,
    listview,
    dialogs,
    snackbar,
    form,
    cidades,
   }

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    //final mediaQuery = MediaQuery.of(context);

    //final statusBar = mediaQuery.padding.top;
    //final heightBody = mediaQuery.size.height - statusBar - kToolbarHeight;
    //
    //print(heightBody);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Nubank'),
        backgroundColor: Colors.purple[700],
        actions: [
          PopupMenuButton<PopupMenuPages>(
            icon: Icon(Icons.account_circle_sharp),
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
                case PopupMenuPages.layout_builder:
                  Navigator.of(context).pushNamed('/layout_builder');
                break;
                case PopupMenuPages.botoes_rotacao_texto_page:
                  Navigator.of(context).pushNamed('/botoes_rotacao_texto');
                break;
                case PopupMenuPages.scrolls_single_child:
                  Navigator.of(context).pushNamed('/scrolls/single_child');
                break;
                case PopupMenuPages.listview:
                  Navigator.of(context).pushNamed('/scrolls/listview_page');
                break;
                case PopupMenuPages.dialogs:
                  Navigator.of(context).pushNamed('/dialogs');
                break;
                case PopupMenuPages.snackbar:
                  Navigator.of(context).pushNamed('/snackbar');
                break;
                case PopupMenuPages.form:
                  Navigator.of(context).pushNamed('/form');
                break;
                case PopupMenuPages.cidades:
                  Navigator.of(context).pushNamed('/cidades');  
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
                ),
                PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.layout_builder,
                child: Text('Layout Builder'),
                ),
                PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.botoes_rotacao_texto_page,
                child: Text('Botoes rotacao texto'),
                ),
                PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.scrolls_single_child,
                child: Text('Scrolls SingleChild'),
                ),
                PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.listview,
                child: Text('ListView'),
                ),
                PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.dialogs,
                child: Text('Dialogs'),
                ),
                PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.snackbar,
                child: Text('SnackBar'),
                ),
                PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.form,
                child: Text('Formulario'),
                ),
                PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.cidades,
                child: Text('Cidades'),
                ),
            ];
          })
        ],
      ),
      body: 
      Theme(
        //data: ThemeData(primaryColor: Colors.blue), 
        data: Theme.of(context).copyWith(
        primaryColor: Colors.red
        ),
        // depois apaga o theme data de cima e faz o teste 

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Botão X'),
              ),
              Container(
                height: 100,
                width: 100,
                color: Theme.of(context).primaryColor,
              ),
              Container(
                height: 100,
                width: 100,
                color: Theme.of(context).primaryColorDark,
              )
            ],
          ),
        ),
      )
    );
  }
}
