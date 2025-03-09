import 'package:flutter/material.dart';
import 'Screens/homeScreen.dart';
import 'ecommerce_app/app.dart';
void main() { //starting point
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: TAMARA(),
    );
  }
}


