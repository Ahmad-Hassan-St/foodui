import 'package:flutter/material.dart';
import 'package:food_desing/Screens/Home.dart';

import '../utilis/colors.dart';
import 'Category.dart';
class homefeed_screen extends StatefulWidget {
  const homefeed_screen({Key? key}) : super(key: key);

  @override
  _homefeed_screenState createState() => _homefeed_screenState();
}

class _homefeed_screenState extends State<homefeed_screen> {
  int _selectedindex=0;
  final List<Widget> _screens=<Widget>[
    const home(),
    const Category(),
    const Text("3"),
    const Text("4"),
    const Text("5"),

  ];
  void onItemTaped(int index){
    setState(() {
      _selectedindex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _screens.elementAt(_selectedindex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onItemTaped,
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _selectedindex == 0 ?  primarycolor : Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_online,color: _selectedindex == 1?  primarycolor : Colors.grey,),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,color: _selectedindex == 2 ?  primarycolor : Colors.grey,),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today,color: _selectedindex == 3 ?  primarycolor : Colors.grey,),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: _selectedindex == 4 ?  primarycolor : Colors.grey,),
            label: 'Person',
          ),
        ],
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.pink,
      ),
    );

  }
}
