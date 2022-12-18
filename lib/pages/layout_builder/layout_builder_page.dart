import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // pode fazer assim pra saber o tamanho de tela do dispositivo
     //final mediaQuery = MediaQuery.of(context);

    // print('Largura é ${mediaQuery.size.width}');
    // print('Altura é ${mediaQuery.size.height}');
    // print('Orientação é ${mediaQuery.orientation}');
    // print('Padding TOP é ${mediaQuery.padding.top}');
    // print('Tamanho AppBarDefault ${kToolbarHeight}');

    // fazendo desse jeito consegue saber o tamanho EXATO da tela. Tirando a barra de notificações

    // final statusBar = mediaQuery.padding.top;
    // final heightBody = mediaQuery.size.height - statusBar - kToolbarHeight;

    // Utilizando o layoutBuilder tem que ter noção do seguinte. 
    // O width pai vai ser quem vai definir o tamanho da tela que vai ser usado.
    // por exemplo, o center, ele usa toda a parte da tela mas n usa o appbar nem o statusbar.
    // na maioria das vezes compensa utilizar, so precisa ter cuidado na hora de chamar.
    // Por que os filhos vão herdar os parametros de tamanho do pai.//

    return Scaffold(
        appBar: AppBar(
          title: const Text('LayoutBuilder'),
          backgroundColor: Colors.purple[700],
        ),
        body: Center(child: 
          LayoutBuilder(
            builder: (context, constrains) {
             return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.red,
                    width: constrains.maxWidth * .50, //tamanho
                    height: constrains.maxHeight * .5, //largura
                  ),
                  Container(
                    color: Colors.blue,
                    width: constrains.maxWidth,
                    height: constrains.maxHeight * .5,
                  ),
              ]);
        })));
  }
}
