import 'package:flutter/material.dart';
import 'package:slide_widget/Contacts/homepage.dart';
import 'package:slide_widget/Example/bottombar.dart';
import 'package:slide_widget/Slidable/home_page.dart';
import 'package:slide_widget/ui/home.dart';
import 'Contacts/bottombar.dart';
import 'Example/HomeScreen.dart';
import 'Insta/list_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
         color:    const Color.fromRGBO(21, 22, 32, 1),
   home:  BuildList(),
      // routes: {
      //   '/': (_)=> Homepage(),
      //   'Secondpage ': (_)=> home(),
        
      // },
      // home: Homepage(),
    );
  }
}
