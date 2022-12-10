import 'package:flutter/material.dart';

class MediaQueryPages extends StatelessWidget {
  const MediaQueryPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // pode fazer assim pra saber o tamanho de tela do dispositivo
    final mediaQuery = MediaQuery.of(context);

    print('Largura é ${mediaQuery.size.width}');
    print('Altura é ${mediaQuery.size.height}');
    print('Orientação é ${mediaQuery.orientation}');
    print('Padding TOP é ${mediaQuery.padding.top}');
    print('Tamanho AppBarDefault ${kToolbarHeight}');

    // fazendo desse jeito consegue saber o tamanho EXATO da tela. Tirando a barra de notificações

    final statusBar = mediaQuery.padding.top;
    final heightBody = mediaQuery.size.height - statusBar - kToolbarHeight;

    var texto = 'Teste';

    return Scaffold(
      appBar: AppBar(
        title: const Text('MediaQuery'),
        backgroundColor: Colors.purple[700],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.red,
              width: mediaQuery.size.width * .50, //tamanho
              height: heightBody * .5, //largura
            ),
            Container(
              color: Colors.blue,
              width: mediaQuery.size.width,
              height: heightBody * .5,
            ),
          ],
        ),
      ),
    );
  }
}
