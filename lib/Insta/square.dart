import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MySquare extends StatelessWidget {
  final child;
  MySquare({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 300,
        color: Colors.deepPurple[200],
        child: Center(child: Text(child,style: TextStyle(fontSize: 40),)),
      ),
    );
  }
}
