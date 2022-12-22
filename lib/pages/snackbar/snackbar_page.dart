// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SnackbarPage extends StatelessWidget {
  const SnackbarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBars'),
        backgroundColor: Colors.purple[700],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {

              final snackbar = SnackBar(
                  content: Text('Usuario logado'),
                  backgroundColor: Colors.black45,
                );
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            }, child: Text('Simple SnackBar')),

            ElevatedButton(onPressed: () {
              final snackBar = SnackBar(
                    content: Text('Senha salvo com sucesso'),
                    backgroundColor: Colors.purple[800],
                    action: SnackBarAction(label: 'Desfazer', onPressed: () {
                      print('fui clicado');
                    },) 
                  ,);

              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }, child: Text('Action SnackBar')),
          ],
        ),
      ),
    );
  }
}
