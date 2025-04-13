import 'package:flutter/material.dart';
import 'package:flutter_section4/Screens/homeScreen.dart';
import 'package:flutter_section4/main.dart';
import 'package:flutter_section4/midProject/cartScreen.dart';
import 'package:flutter_section4/midProject/home.dart';

class NavbarClass extends StatefulWidget {
  const NavbarClass({super.key});

  @override
  State<NavbarClass> createState() => _NavbarClassState();
}

class _NavbarClassState extends State<NavbarClass> {
  @override
  int index = 0;
   List<Widget> pages = [
     HomeScreenNav(),
    Cartscreen(

    ), Scaffold(
       backgroundColor: Colors.pink,
     ), Scaffold(backgroundColor: Colors.purple,),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      bottomNavigationBar: BottomNavigationBar(items: 
      [
       BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home") ,
       BottomNavigationBarItem(icon: Icon(Icons.card_travel),label: "Cart") ,
       BottomNavigationBarItem(icon: Icon(Icons.message),label: "message") ,
       BottomNavigationBarItem(icon: Icon(Icons.person),label: "profile") ,
      ],
       selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (v){
        setState(() {
          index = v;
        });

        },
        currentIndex: index,

      ),
      body: pages[index],
    );
  }
}
