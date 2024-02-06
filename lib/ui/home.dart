import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:slide_widget/Slidable/home_page.dart';
import 'package:slide_widget/ui/emotions.dart';
import 'package:slide_widget/ui/util.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
     
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // Hi Manoj
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Hi, Manoj! ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "23 Jan, 2021",
                            style: TextStyle(
                              color: Colors.blue[200],
                            ),
                          )
                        ],
                      ),
                      // notification
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[700],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(0.0),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.notifications,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  // Search bar
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[700],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Search", style: TextStyle(color: Colors.white)),
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  // How do you feel?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "How do you feel",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  //  4 different faces
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // bad
                      Column(
                        children: const [
                          EmotionFace(
                            emotionFace: '😞',
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Bad",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      // fine
                      Column(
                        children: const [
                          EmotionFace(
                            emotionFace: '😄',
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "fine",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      // well
                      Column(
                        children: const [
                          EmotionFace(
                            emotionFace: '😊',
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Well",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      // excellent
                      Column(
                        children: const [
                          EmotionFace(
                            emotionFace: '😁',
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Excellent",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
            // color: const Color.fromRGBO(21, 22, 32, 1),
            color: Colors.grey[300],
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: Column(
                      // Exreciess
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Exercises",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Icon(Icons.more_horiz),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
        
                        // ****                LIST OF EXERCISES
                      // ***** V E R Y    I M P O R A T A N T 
                      // **** IF LISTVIEW ISN'T WORKING(OR SHOWING ERROR , WRAP LIST VIEW WITH EXPANDED WIDGET ).
           Expanded(   
                              child: ListView(
                                children: [
                                 Exercise(icon: Icons.favorite, exerciseName: "Speaking Skills",Color: Colors.orange, numberOfExercises: 16),
                                 Exercise(icon: Icons.person, exerciseName: "Reading Skills",Color: Colors.green, numberOfExercises:8),
                                 Exercise(icon: Icons.star, exerciseName: "Writing Skills",Color: Colors.pink, numberOfExercises:8),
                                 
                                ],
                              ),
                            )
                     
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
