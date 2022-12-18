// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/dialogs/dialog_custom.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[700],
        title: const Text('Dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return DialogCustom(context);
                    },
                  );
                },
                child: Text('Dialogs')),

            // Simple dialog, ele não vem tão cru como é de esperado. Ele vem com um titulo e um subtitulo ja predefinido.
            // ai fica mais facil de trabalhar com ele;
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                          title: Text('Simple Dialog'),
                          contentPadding: EdgeInsets.all(10),
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('Titulo Y'),
                            ),
                            TextButton(
                                onPressed: () => Navigator.of(context).pop(),
                                child: Text('Sair do Dialog'))
                          ]);
                    },
                  );
                },
                child: Text('SimpleDialog')),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {

                      // se for ios, o alert dialog vai mudar
                      if(Platform.isIOS) {
                        return CupertinoAlertDialog(
                        title: Text('Alert Dialog'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text('Deseja salvar?'),
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: Text('Cancelar')),
                          TextButton(onPressed: () {}, child: Text('Salvar')),
                        ],
                      );
                      } else {
                        return AlertDialog(
                        title: Text('Alert Dialog'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text('Deseja salvar?'),
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: Text('Cancelar')),
                          TextButton(onPressed: () {}, child: Text('Salvar')),
                        ],
                      );
                      }
                    },
                  );
                },
                child: Text('Alert Dialog')),
            ElevatedButton(
                onPressed: () async {

                  if(Platform.isIOS){
                    showBottomSheet(context: context, builder: (context) {
                      return CupertinoTimerPicker(
                        onTimerDurationChanged: (value) {},
                        );
                      },
                    );
                  } else {
                    final selectedTime = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                    );
                    print('O horario selecionado é $selectedTime');
                  }
                },
                child: Text('Time Picker')),
            ElevatedButton(
             onPressed: () async {
              final selectedDate = await showDatePicker(
                context: context, 
                initialDate: DateTime.now(), 
                firstDate: DateTime(2020), 
                lastDate: DateTime(2025),
                );
              print('O Date Picker foi selecionado em $selectedDate');
            }, 
            child: Text('Date Picker')),
          ],
        ),
      ),
    );
  }
}
