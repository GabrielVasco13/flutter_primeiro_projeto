// ignore_for_file: sized_box_for_whitespace, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DialogCustom extends Dialog {
  DialogCustom(BuildContext context) : super(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10)
    ),
    child: Container(
      width: 200,
      height: 200,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Titulo X'),
          ),
          TextButton(onPressed: () => Navigator.of(context).pop(), child: Text('Fechar dialog'),)
        ],
      ),
    )
  );
}
