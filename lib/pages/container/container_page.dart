// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo de container'),
      ),
      body: Center(
        child: Container(
          //container é como se fosse um aquivo styles.css
          width: 200,
          height: 200,
          margin: EdgeInsets.all(10), //margin da espaço interno como no css
          padding: EdgeInsets.all(
              10), // padding da espaço externo como no css, so precisa dizer oq vai ser aplicado
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                    color: Colors.black, blurRadius: 10, offset: Offset(10, 10)),
                BoxShadow(
                    color: Colors.purple,
                    blurRadius: 15,
                    offset: Offset(-10, -10))
              ]),
        ),
      ),
    );
  }
}
