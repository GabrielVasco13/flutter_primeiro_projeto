import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/home/container/container_page.dart';
import 'package:flutter_primeiro_projeto/pages/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (_) => HomePage(),
        '/container': (_) => ContainerPage(),
      },
    );
  }
}
