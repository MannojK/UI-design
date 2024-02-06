import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:slide_widget/Contacts/homepage.dart';
import 'package:slide_widget/ui/home.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
  Homepage(),
    const Text("search" ,style: TextStyle(color: Colors.white),),
    const Text("image" ,style: TextStyle(color: Colors.white),),
    home(),
    // const Text("profile" ,style: TextStyle(color: Colors.white),),
  ];
  void _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromRGBO(21, 22, 32, 1),
  backgroundColor: const Color.fromRGBO(21, 22, 32, 1),      

      body: Center(child: _widgetOptions[_selectedIndex]),
      
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTapped,
        backgroundColor:const Color.fromRGBO(21, 22, 32, 1) ,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.indigo[400],
        unselectedItemColor: Colors.indigo[200],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
       
       

        items: const [
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.home_16_regular),
            activeIcon: Icon(FluentIcons.home_16_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.search_16_regular),
            activeIcon: Icon(FluentIcons.search_16_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.image_16_regular),
            activeIcon: Icon(FluentIcons.image_16_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.person_16_regular),
            activeIcon: Icon(FluentIcons.person_16_filled),
            label: "Home",
          ),
        ],
      ),
    );
  }
}
