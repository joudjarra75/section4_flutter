import 'package:flutter/material.dart';
import 'package:flutter_section4/navigation/const_route.dart';
import 'package:flutter_section4/navigation/errorScreen.dart';
import 'package:flutter_section4/navigation/screenOne.dart';
import 'package:flutter_section4/navigation/screenTwo.dart';

class RouteClass{
  //2 method
 static Route<dynamic> generator(RouteSettings settings) {
   switch (settings.name) {
     case route1:
       return MaterialPageRoute(builder: (_) => Screenone());
     case route2:
       return MaterialPageRoute(builder: (_) => Screentwo());
     default:
       return MaterialPageRoute(builder: (_) => Errorscreen());
   }
 }
   // MaterialPageRoute materialPageRouteBuilder(Widget screen){
   //   return MaterialPageRoute(builder: (_) => screen);
   //
   // }



}