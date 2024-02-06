import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:slide_widget/Contacts/contact_list.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:slide_widget/Slidable/home_page.dart';
import 'package:slide_widget/ui/home.dart';

import 'bottombar.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(21, 22, 32, 1),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  //   *********   BUTTONS
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // *******  ELEVATED BUTTON *********
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(137, 50),
                            primary: Color.fromARGB(230, 13, 33, 219),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))
                            // Text Color (Foreground color)
                            ),
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          child: Text(
                            ' All ',
                            style: TextStyle(fontSize: 15, color: Colors.white,),
                          ),
                        ),
                      ),
                      // *******  TEXT BUTTON *********
                      TextButton(
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => home(),
                          //     ));
                        },
                        style: TextButton.styleFrom(
                          minimumSize: Size(147, 50),

                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(
                                color: Color.fromRGBO(49, 49, 59, 1), width: 2),
                          ),
                          // Text Color (Foreground color)
                        ),
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                          child: Text(
                            ' Missed ',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //  *******                    TITLE
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        child: Text(
                          "Recents",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.edit,
                            color: Color.fromRGBO(99, 99, 108, 1)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //  *******            SEARCH BAR

                  Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromRGBO(48, 49, 59, 1),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(37),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical:10),
                        child: Row(
                          children: const [
                            Icon(
                              FluentIcons.search_32_regular,
                              color: Color.fromRGBO(113, 115, 142, 1),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Search",
                                  hintStyle: TextStyle(
                                      color: Color.fromRGBO(113, 115, 142, 1),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),

                  SizedBox(height: 22),
                  //                         ****** CONTACT LIST
                  const ContactList(
                      avatar: "assets/img1.jpeg",
                      headtext: "Armaan",
                      txtColor: Colors.white,
                      subtext: "Mobile",
                      icon: FluentIcons.call_24_filled,
                      iconColor: Color.fromRGBO(113, 115, 142, 1),
                      time: "11:20"),
                  const SizedBox(
                    height: 12,
                  ),
                  const ContactList(
                      avatar: "assets/img2.jpeg",
                      headtext: "Nigga",
                      txtColor: Colors.red,
                      subtext: "Mobile",
                      icon: FluentIcons.call_inbound_24_filled,
                      iconColor: Color.fromARGB(255, 247, 117, 115),
                      time: "9:30"),
                  const SizedBox(
                    height: 12,
                  ),
                  const ContactList(
                      avatar: "assets/img3.png",
                      headtext: "Saketh",
                      txtColor: Colors.white,
                      subtext: "Whatsapp",
                      icon: FluentIcons.call_24_regular,
                      iconColor: Color.fromRGBO(113, 115, 142, 1),
                      time: "7:01"),
                  const SizedBox(
                    height: 12,
                  ),
                  const ContactList(
                      avatar: "assets/img4.jpeg",
                      headtext: "Player",
                      txtColor: Colors.white,
                      subtext: "mobile",
                      icon: FluentIcons.call_outbound_24_filled,
                      iconColor: Color.fromRGBO(113, 115, 142, 1),
                      time: "Yesterday"),
                  const SizedBox(
                    height: 12,
                  ),
                  const ContactList(
                      avatar: "assets/img5.jpeg",
                      headtext: "Bot",
                      txtColor: Colors.white,
                      subtext: "mobile",
                      icon: FluentIcons.wifi_1_24_filled,
                      iconColor: Color.fromRGBO(113, 115, 142, 1),
                      time: "Monday"),
                  const SizedBox(
                    height: 12,
                  ),
                  const ContactList(
                      avatar: "assets/img6.jpeg",
                      headtext: "Jospeh",
                      txtColor: Colors.white,
                      subtext: "mobile",
                      icon: Icons.phone_in_talk_sharp,
                      iconColor: Color.fromRGBO(113, 115, 142, 1),
                      time: "Last week"),
                  const SizedBox(
                    height: 12,
                  ),
                  const ContactList(
                      avatar: "assets/img7.jpeg",
                      headtext: "Light ",
                      txtColor: Colors.white,
                      subtext: "mobile",
                      icon: Icons.phone_in_talk_sharp,
                      iconColor: Color.fromRGBO(113, 115, 142, 1),
                      time: "April"),
                  const SizedBox(
                    height: 12,
                  ),
                  const ContactList(
                      avatar: "assets/img8.png",
                      headtext: "John Cena",
                      txtColor: Colors.white,
                      subtext: "mobile",
                      icon: FluentIcons.call_forward_24_filled,
                      iconColor: Color.fromRGBO(113, 115, 142, 1),
                      time: "April "),
                  const SizedBox(
                    height: 12,
                  ),

                  const SizedBox(
                    height: 18.0,
                  ),
                ],
              ),
            ),
             
          ],
        ),
      ),
      //  ****** BOTTOM NAVIGATION BAR
   
     
    );
  }
}

class text1 extends StatelessWidget {
  final text;

  final size;
  const text1({super.key, @required this.text, @required this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size, color: Colors.white),
    );
  }
}

class text2 extends StatelessWidget {
  final text;

  final size;
  const text2({super.key, @required this.text, @required this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: Color.fromRGBO(113, 115, 142, 1),
      ),
    );
  }
}

// Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: const [
//                      text1(text: "Armaan", size: 20.0),
//                      SizedBox(height: 18,),
//                      text2(text: "Mobile", size: 12.0),
//                     ],
//                   ),
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: const [
//                      Icon(Icons.call_made_rounded,color: Color.fromRGBO(113, 115, 142, 1),),
//                      SizedBox(height: 18,),
//                      text2(text: "11:28", size: 12.0),
//                     ],
//                   ),
/**
 *  Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromRGBO(48, 49, 59, 1),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.search,
                              color: Color.fromRGBO(113, 115, 142, 1),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Search",
                              style: TextStyle(
                                  color: Color.fromRGBO(113, 115, 142, 1),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      )),
 */
/**
 *    Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical:5),
                    child: Container(
                     decoration: BoxDecoration(border:Border.all(color: Color.fromRGBO(48, 49, 59, 1),
                     width: 2,
                     ),
                     
                     borderRadius: BorderRadius.circular(30)
                     ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: const [
                            Icon(FluentIcons.search_24_regular,color:Color.fromRGBO(48, 49, 59, 1) ,),
                           Expanded(
                             child: TextField(
                              decoration: InputDecoration(border: InputBorder.none,
                              hintText: "   Search",hintStyle: TextStyle(color: Color.fromRGBO(48, 49, 59, 1),fontSize: 20) ),
                             ),
                           ),
                          ],
                        ),
                      ),
                    ),
                  ),
 */
