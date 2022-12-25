import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            color: Colors.green,
          ),
          Container(
                color: Colors.purple,
                width: 50,
                height: 50,
              ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              color: Colors.blue,
              width: 300,
              height: 300,
            ),
          ),
          //    Align(
          //      alignment: Alignment.bottomRight,
          //      child: Container(
          //        color: Colors.pink,
          //        width: 150,
          //        height: 150,
          //      ),
          //    ),
          Positioned(
            //top: 40,
            bottom: 200,
            right: 50,
            child: Container(
              color: Colors.pink,
              width: 150,
              height: 150,
            ),
          ),
        ],
      ),
    );
  }
}
