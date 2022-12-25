// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class StackPage2 extends StatelessWidget {
  const StackPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack2'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkG5fVERYzXl-xiN_i1GFYF2Lhx6qTmtNxzw&usqp=CAU'),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            color: Colors.white12
          ),
          Positioned(
            left: 10,
            right: 10,
            bottom: 48,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              elevation: 10,
              child: Column(
                children: [
                  Text(
                    'Leão',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      'Leão e um bicho mt brabor e perigoso',
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
