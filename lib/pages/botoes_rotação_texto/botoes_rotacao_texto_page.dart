// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';

class BotoesRotacaoTextoPage extends StatelessWidget {
  const BotoesRotacaoTextoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botoes e rotação de texto'),
        backgroundColor: Colors.purple[700],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                RotatedBox(
                  quarterTurns: -1,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    color: Colors.orange,
                    child: Text('Rotacionando'),
                  ),
                ),
                Icon(Icons.access_alarms_sharp),
              ],
            ),
            TextButton(
              onPressed: () {},
              child: Text('Salvar'),
              style: TextButton.styleFrom(
                  foregroundColor: Colors
                      .yellow, // aqui deveria ter o primary, mas no video ele ta usando uma versao um pouco inferior do flutter. Então o primary foi descontinuado.
                  padding: EdgeInsets.all(50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)))),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app)),
            ElevatedButton(
              onPressed: () {},
              child: Text('salvar'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                shadowColor: Colors.pink,
                // minimumSize: Size(100, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ), // espaço entre os botoes

            ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.access_alarms),
                label: Text('Alarme Foda')),

            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Modo aviao'),
              style: ButtonStyle(
                shadowColor: MaterialStateProperty.all(Colors.blue),
                //minimumSize: MaterialStateProperty.all(
                //  Size(120, 50),
                //),
                minimumSize: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Size(150, 200);
                  }
                  return Size(120, 50);
                }),
                backgroundColor: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.amber;
                    } else if (states.contains(MaterialState.hovered))
                      return Colors.purple;
                  },
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {},
              child: Text('inlWell'),
            ),
            SizedBox(
              height: 15,
            ),

            GestureDetector(
              child: Text('GestureDetector'),
              onTap: () => print('Printado pelo gesture'),
              onVerticalDragStart: (_) => print('Gesture Movimentado'),
            ),

            Container(
                width: 300,
                height: 100,
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(colors: [Colors.orange, Colors.purple]),
                    borderRadius: BorderRadius.circular(30),
                    // ignore: prefer_const_literals_to_create_immutables
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          offset: Offset(0, 10),
                          color: Colors.pink)
                    ]),
                child: InkWell(
                  borderRadius: BorderRadius.circular(90),
                  onTap: () {},
                  child: Center(
                    child: Text(
                      'Salvar',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
