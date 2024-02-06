import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class EmotionFace extends StatelessWidget {
  final String emotionFace;
  const EmotionFace({super.key, required this.emotionFace});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[700],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
            child: Text(
          emotionFace,
          style: TextStyle(fontSize: 20),
        )),
      ),
    );
  }
}
