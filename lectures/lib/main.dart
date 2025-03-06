import 'package:flutter/material.dart';
import 'package:flutter_section4/Screens/homeScreen.dart';

void main() { //starting point
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
     home: HomeScreen(),
    );
  }
}


