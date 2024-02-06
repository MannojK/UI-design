import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slide_widget/Example/bottombar.dart';
import 'package:slide_widget/Example/contacts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        backgroundColor: Color.fromRGBO(20, 21, 31, 1),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 15),
              child: Column(
                children: [

    
    //     **************          BUTTONS 

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.indigoAccent[700],
                          minimumSize: Size(130,50),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),

                        ),
                        onPressed: (){}, child: Text("All",style: TextStyle(fontSize: 17,color: Colors.white),),
                        ),
                        SizedBox(width: 17,),
                         TextButton(
                        style: TextButton.styleFrom(
                          // backgroundColor: Colors.indigoAccent[700],
                          minimumSize: Size(130,50),
                          
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
                          side: BorderSide( color: Color.fromRGBO(55,55,67,1),width: 2),

                        ),
                        onPressed: (){}, child: Text("Missed",style: TextStyle(fontSize: 17,color: Colors.white),),
                        ),
                    ],
                  ),
                   SizedBox(height: 18,),

                  //  *********    HEADING 

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Recents",style: GoogleFonts.openSans(fontSize: 30, fontWeight : FontWeight.bold,color: Colors.white),),

                      Icon(FluentIcons.edit_20_filled,color: Color.fromRGBO(96, 96, 118, 1),)
                    ],
                  ),

                //  *******       SEARCH    BAR 

                  SizedBox(height: 15,),
                  Container(
               decoration: BoxDecoration(
                border: Border.all(color:  Color.fromRGBO(55,55,67,1),width: 2),

                borderRadius: BorderRadius.circular(37),
                
               ),
               child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 10),
                 child: Row(
                  
                  children: const [
                    Icon(FluentIcons.search_48_regular,color:Color.fromRGBO(162, 162, 180, 1),),
                  SizedBox(width: 10,),
                    // Text("Search",style: TextStyle(color: Color.fromRGBO(180, 180, 209, 1),fontSize: 19),),
                  
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText:"Search",
                          hintStyle: TextStyle(
                            color: Color.fromRGBO(180,180, 209, 1),fontSize: 19,fontWeight: FontWeight.w300
                          ),
                        ),
                      ),
                    )
                  ],
                 ),
               ),
                  ),
              SizedBox(height: 20,),
        //  ********               CONTACTS 

                  SizedBox(height:20,),
                  Contacts(avatar: "assets/images/tony.jpeg", headtext:"Tony", subtext:" Mobile", icon:FluentIcons.call_32_filled, time: "11:53", iconColor: Colors.grey[300], txtColor: Colors.grey[200]),
                  SizedBox(height: 20,),
                   Contacts(avatar: "assets/images/black.jpg", headtext:"Natasha", subtext:" Mobile", icon:FluentIcons.call_inbound_28_filled, time: "10:26", iconColor: Colors.red[300], txtColor: Colors.red[300]),
                  SizedBox(height: 20,),
                   Contacts(avatar: "assets/images/Hawkeye.jpg", headtext:"Hawkeye", subtext:" Mobile", icon:FluentIcons.wifi_1_24_filled, time: "7;25", iconColor: Colors.grey[300], txtColor: Colors.grey[200]),
                  SizedBox(height: 20,),

                   Contacts(avatar: "assets/images/Hulk.webp", headtext:"Hulk", subtext:" Mobile", icon:FluentIcons.call_dismiss_16_filled, time: "Yesterday", iconColor: Colors.grey[300], txtColor: Colors.grey[200]),
                  SizedBox(height: 20,),

                   Contacts(avatar: "assets/images/Captain.webp", headtext:"Captain", subtext:" Mobile", icon:FluentIcons.call_32_filled, time: "11:53", iconColor: Colors.grey[300], txtColor: Colors.grey[200]),
                  SizedBox(height: 20,),
                   Contacts(avatar: "assets/images/thor.jpeg", headtext:"Thor", subtext:" Mobile", icon:FluentIcons.call_inbound_24_filled, time: "11:53", iconColor: Colors.grey[300], txtColor: Colors.grey[200]),
                  SizedBox(height: 20,),

                   Contacts(avatar: "assets/images/guar1.jpeg", headtext:"Unknown", subtext:" Mobile", icon:FluentIcons.call_32_filled, time: "11:53", iconColor: Colors.grey[300], txtColor: Colors.grey[200]),
                  SizedBox(height: 20,),

                   Contacts(avatar: "assets/images/guar2.jpeg", headtext:"Gamora", subtext:" Mobile", icon:FluentIcons.call_32_filled, time: "11:53", iconColor: Colors.grey[300], txtColor: Colors.grey[200]),
                  SizedBox(height: 20,),
                   Contacts(avatar: "assets/images/guar3.jpeg", headtext:"Manita", subtext:" Mobile", icon:FluentIcons.call_end_20_filled, time: "11:53", iconColor: Colors.grey[300], txtColor: Colors.grey[200]),
                  SizedBox(height: 20,),
                   Contacts(avatar: "assets/images/guar4.jpeg", headtext:"Batista", subtext:" Mobile", icon:FluentIcons.call_32_filled, time: "11:53", iconColor: Colors.grey[300], txtColor: Colors.grey[200]),
                  SizedBox(height: 20,),

                ],
              ),
            ),
          ],

        ),
       
        );
  }
}
