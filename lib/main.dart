import 'package:flutter/material.dart';
import 'package:formulario/counter/page.dart';
import 'package:formulario/form1/page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Form1Page(),
    );
  }
}
