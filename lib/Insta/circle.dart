import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  final child;
  const Circle({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(shape: BoxShape.circle, 
        
        // color: Colors.pink,
        
        ),
         child: Center(child:Text("hello "))),
       
      
    );
  }
}
