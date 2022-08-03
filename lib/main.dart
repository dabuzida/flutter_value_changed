import 'package:flutter/material.dart';
import 'package:flutter_value_changed/i.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ValueChanged',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ValueChanged'),
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        body: I(),
      ),
    );
  }
}

class AAA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('d');
  }
}
