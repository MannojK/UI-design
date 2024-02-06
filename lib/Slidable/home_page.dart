import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'tools.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Contacts "),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: 
          [Container(
            child: Column(
              children: const [
                 Components(icon1: Icons.call, label1: "call", Color1: Colors.green, icon2: Icons.delete, label2: "delete" ,Color2: Colors.red, title: "Manoj ", subtitle: "23345365644", leading:Icon(Icons.person,color: Colors.black,)),
                 Components(icon1: Icons.call, label1: "call", Color1: Colors.green, icon2: Icons.delete, label2: "delete" ,Color2: Colors.red, title: " Sir ", subtitle: "8764566544", leading:Icon(Icons.person,color: Colors.black,)),
                 Components(icon1: Icons.call, label1: "call", Color1: Colors.green, icon2: Icons.delete, label2: "delete" ,Color2: Colors.red, title: " Plumber  ", subtitle: "234566544", leading:Icon(Icons.person,color: Colors.black,)),
                 Components(icon1: Icons.call, label1: "call", Color1: Colors.green, icon2: Icons.delete, label2: "delete" ,Color2: Colors.red, title: " nigga  ", subtitle: "56745378967", leading:Icon(Icons.person,color: Colors.black,)),
                 Components(icon1: Icons.call, label1: "call", Color1: Colors.green, icon2: Icons.delete, label2: "delete" ,Color2: Colors.red, title: " Gigachad  ", subtitle: "3465865334", leading:Icon(Icons.person,color: Colors.black,)),
                Components(icon1: Icons.call, label1: "call", Color1: Colors.green, icon2: Icons.delete, label2: "delete" ,Color2: Colors.red, title: " Cunt ", subtitle: "877466444", leading:Icon(Icons.person,color: Colors.black,)),
                Components(icon1: Icons.call, label1: "call", Color1: Colors.green, icon2: Icons.delete, label2: "delete" ,Color2: Colors.red, title: " Come  ", subtitle: "567656466444", leading:Icon(Icons.person,color: Colors.black,)),
                Components(icon1: Icons.call, label1: "call", Color1: Colors.green, icon2: Icons.delete, label2: "delete" ,Color2: Colors.red, title: " Sheep ", subtitle: "0657646444", leading:Icon(Icons.person,color: Colors.black,)),
                Components(icon1: Icons.call, label1: "call", Color1: Colors.green, icon2: Icons.delete, label2: "delete" ,Color2: Colors.red, title: " Shawn", subtitle: "3457666444", leading:Icon(Icons.person,color: Colors.black,)),
                Components(icon1: Icons.call, label1: "call", Color1: Colors.green, icon2: Icons.delete, label2: "delete" ,Color2: Colors.red, title: " Sheet  ", subtitle: "2334546444", leading:Icon(Icons.person,color: Colors.black,)),
                Components(icon1: Icons.call, label1: "call", Color1: Colors.green, icon2: Icons.delete, label2: "delete" ,Color2: Colors.red, title: " Pillow  ", subtitle: "7854546444", leading:Icon(Icons.person,color: Colors.black,)),
                Components(icon1: Icons.call, label1: "call", Color1: Colors.green, icon2: Icons.delete, label2: "delete" ,Color2: Colors.red, title: " Bot  ", subtitle: "3456466444", leading:Icon(Icons.person,color: Colors.black,)),
              ],
            ),
          ),
        ],
      )
    );
  }
}

//  endActionPane: ActionPane(
//           motion: ScrollMotion(),
//           children: [
//         SlidableAction(
//           // An action can be bigger than the others.
//           flex: 2,
//           onPressed:((context){
      
//           }),
//           backgroundColor: Color(0xFF7BC043),
//           foregroundColor: Colors.white,
//           icon: Icons.archive,
//           label: 'Archive',
//         ),
//         SlidableAction(
//           onPressed: ((context){
      
//           }),
//           backgroundColor: Color(0xFF0392CF),
//           foregroundColor: Colors.white,
//           icon: Icons.save,
//           label: 'Save',
//         ),
//           ],
//           ),
