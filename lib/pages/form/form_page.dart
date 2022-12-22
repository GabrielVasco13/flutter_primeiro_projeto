// ignore_for_file: prefer_const_literals_to_create_immutables, body_might_complete_normally_nullable, prefer_const_constructors

import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  //String texto = '';
  final formKey = GlobalKey<FormState>();
  final nameEC = TextEditingController();
  final senhaEC = TextEditingController();
  String categoria = 'Categoria1';

  // importante!!!
  @override
  void dispose() {
    nameEC.dispose();
    senhaEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulario'),
        backgroundColor: Colors.purple[700],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                // jeito simples
                // TextField(
                //   onChanged: (String value){
                //     setState(() {
                //       texto = value;
                //     });
                //   },
                // ),
                // SizedBox(height: 10),
                // Text('Texto digitado $texto')
                TextFormField(
                  controller: nameEC,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  maxLines: null, //deixe no null
                  decoration: InputDecoration(
                    labelText: 'Nome completo',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.amber),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                    labelStyle: TextStyle(
                      fontSize: 15,
                      color: Colors.purple,
                    ),
                    isDense: true,
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo x não foi preenchido';
                    }
                  },
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: senhaEC,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.amber),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                    labelStyle: TextStyle(
                      fontSize: 15,
                      color: Colors.purple,
                    ),
                    isDense: true,
                  ),
                  obscureText: true,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo x não foi preenchido';
                    }
                  },
                ),
                SizedBox(height: 10,),
                DropdownButtonFormField<String>(
                  value: categoria,
                  elevation: 16,
                  icon: Icon(Icons.add_circle),
                  isDense: true,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.amber),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                  ),
                  validator: (String? value) {
                    if(value == null || value.isEmpty){
                      return 'Categoria não foi preenchida';
                    }
                  },
                  onChanged: (String? newValue) {
                    if(newValue != null) {
                      setState(() {
                        categoria = newValue;
                      });
                    }
                  },
                  items: [
                    DropdownMenuItem(
                      value: 'Categoria1',
                      child: Text('Categoria1'),),
                    DropdownMenuItem(
                      value: 'Categoria2',
                      child: Text('Categoria2'),),  
                    DropdownMenuItem(
                      value: 'Categoria3',
                      child: Text('Categoria3'),),

                  ]),
      
                ElevatedButton(
                    onPressed: () {
                      var formValid = formKey.currentState?.validate() ?? false;
                      var message = 'Formulario invalido';
                      if (formValid) {
                        message = 'Formulario (Name: ${nameEC.text}) ';
                      }
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(message)));
                    },
                    child: Text('salvado'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
