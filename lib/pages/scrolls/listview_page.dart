import 'dart:collection';

import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
  const ListviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[700],
        title: const Text('ListView'),
      ),
      body: ListView.separated(
        itemCount: 100,
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.black,
            );
        },

        itemBuilder: (context, index) {
          return ListTile( // monta uma lista completa
            title: Text('O indice é $index'),
            subtitle: Text('nubank é foda'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://static.poder360.com.br/2022/09/logo-nubank-848x477.jpg'),
            ),
            trailing: CircleAvatar(),
          );
        },
      ),
    );
  }
}
