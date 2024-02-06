import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:slide_widget/Insta/square.dart';

import 'circle.dart';

class BuildList extends StatefulWidget {
  const BuildList({
    super.key,
  });

  @override
  State<BuildList> createState() => _BuildListState();
}

class _BuildListState extends State<BuildList> {
  final List posts = [
    "Post 1 ",
    "Post 2 ",
    "Post 3 ",
    "Post 4 ",
  ];
    final List stories = [
    "Stories  1 ",
    "Stories  2 ",
    "Stories  3 ",
    "Stories  4 ",
    "Stories  5",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // instagram stories
          Container(
            height: 150,
            child: ListView.builder(
                itemCount: stories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Circle(
                    child: stories[index],
                  );
                }),
          ),
          // instagram posts
          Expanded(
            child: ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  return MySquare(
                    child: posts[index],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
