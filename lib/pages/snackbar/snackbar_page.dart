// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SnackbarPage extends StatelessWidget {
  const SnackbarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[600],
      appBar: AppBar(
        title: const Text('SnackBars'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {

              final snackbar = SnackBar(
                  content: Text('Usuario logado'),
                  backgroundColor: Colors.purple[300],
                );
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            }, child: Text('Simple SnackBar')),

            ElevatedButton(onPressed: () {
              final snackBar = SnackBar(
                    content: Text('Senha salvo com sucesso'),
                    backgroundColor: Colors.purple[300],
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
