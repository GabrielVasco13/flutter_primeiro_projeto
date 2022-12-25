// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/bottom_navigator_bar/page1.dart';
import 'package:flutter_primeiro_projeto/pages/bottom_navigator_bar/page2.dart';

class BottomNavigatorBarPage extends StatefulWidget {
  const BottomNavigatorBarPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigatorBarPage> createState() => _BottomNavigatorBarPageState();
}

class _BottomNavigatorBarPageState extends State<BottomNavigatorBarPage> {

  int indice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Bar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.purple[100],
        currentIndex: indice,
        onTap: (value) {
          setState(() {
            indice = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'Adicionar', 
            icon: Icon(Icons.add)
          ),

          BottomNavigationBarItem(
            label: 'Ancora', 
            icon: Icon(Icons.anchor_outlined)
          ),
        ],
      ),
      body: IndexedStack(
        index: indice,
        children: [
          Page1(),
          Page2(),
        ],
      ),
    );
  }
}
