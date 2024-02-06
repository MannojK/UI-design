import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:slide_widget/Example/HomeScreen.dart';
import 'package:slide_widget/Slidable/home_page.dart';
import 'package:slide_widget/ui/home.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    const Text("Search",style: TextStyle(color: Colors.white),),
    const Text("Image",style: TextStyle(color: Colors.white),),

    const Text("Profile",style: TextStyle(color: Colors.white),),
    // home(),
  ];
  void _ontapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor :Color.fromRGBO(20, 21, 31, 1),
      body:  Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        
        onTap: _ontapped,
        currentIndex: _selectedIndex,
          showSelectedLabels: false,
          
          showUnselectedLabels: false,
          elevation: 10,
          selectedItemColor: Colors.indigo[500],
          unselectedItemColor: Colors.indigo[300],
type: BottomNavigationBarType.fixed,
backgroundColor: Color.fromRGBO(20, 21, 31, 1),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(FluentIcons.home_20_regular),
              activeIcon: Icon(FluentIcons.home_24_filled),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(FluentIcons.search_20_regular),
              activeIcon: Icon(FluentIcons.search_24_filled),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(FluentIcons.image_20_regular),
              activeIcon: Icon(FluentIcons.image_24_filled),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(FluentIcons.person_20_regular),
              activeIcon: Icon(FluentIcons.person_24_filled),
              label: "Home",
            ),
          ]),
    );
  }
}
