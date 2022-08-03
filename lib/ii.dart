import 'dart:math';

import 'package:flutter/material.dart';

class Ii extends StatelessWidget {
  const Ii({
    Key? key,
    required this.callback,
    required this.callback2,
  }) : super(key: key);
  final ValueSetter<String> callback;
  final ValueSetter<String> callback2;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TextButton(onPressed: () => callback('하마'), child: Text('name btn')),
        TextButton(
          onPressed: () {
            int age = Random().nextInt(30) - 10;
            callback2(age.toString());
          },
          child: Text('age btn'),
        ),
        Text('d', textAlign: TextAlign.center),
        Text('d', textAlign: TextAlign.center),
        Text('d', textAlign: TextAlign.center),
      ],
    );
  }
}
