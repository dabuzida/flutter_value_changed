import 'package:flutter/material.dart';
import 'package:flutter_value_changed/ii.dart';

class I extends StatefulWidget {
  const I({Key? key}) : super(key: key);

  @override
  State<I> createState() => _IState();
}

class _IState extends State<I> {
  String? x;
  String? y;

  void _callback(String name) {
    setState(() {
      x = name;
    });
  }

  void _callback2(String age) {
    setState(() {
      y = age;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.purple, width: 11)),
            child: Text('$x\'s age is $y.'),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.green, width: 11)),
            child: Ii(callback: _callback, callback2: _callback2),
          ),
        ),
      ],
    );
  }
}
