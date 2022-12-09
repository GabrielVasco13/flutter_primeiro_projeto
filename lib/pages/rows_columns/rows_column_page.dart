// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class RowsColumnPage extends StatelessWidget {
  const RowsColumnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows e Columns'),
      ),
      body: Container(
        width: 300,
        color: Colors.purple,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Container(
                color: Colors.blueAccent,
                child: Text('Teset 1'),
              ),
              Text('Column 1'),
              Text('Column 2'),
              Text('Column 3'),
              Container(
                height: 150,
                color: Colors.yellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('1'),
                    Text('2'),
                    Text('3'),
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
