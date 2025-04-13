import 'package:flutter/material.dart';
import 'midProject/navBar.dart';
import 'package:flutter_section4/Screens/ListView.dart';
import 'package:flutter_section4/Screens/btnStateFul.dart';
import 'package:flutter_section4/Screens/dropDownBtn.dart';
import 'package:flutter_section4/Screens/gridViewBuilder.dart';
import 'package:flutter_section4/midProject/navBar.dart';
import 'package:flutter_section4/navigation/based_class.dart';
import 'package:flutter_section4/navigation/const_route.dart';
import 'package:flutter_section4/pass%20data/pass%20with%20arguments/pageFour.dart';
import 'package:flutter_section4/pass%20data/pass%20with%20arguments/pageOne.dart';
import 'package:flutter_section4/pass%20data/pass%20with%20arguments/pageThree.dart';
import 'package:flutter_section4/pass%20data/pass%20with%20arguments/pageTwo.dart';
import 'Screens/gridTask.dart';
import 'Screens/gridView.dart';
import 'Screens/homeScreen.dart';
import 'Screens/scaffold.dart';
import 'Screens/textField.dart';
import 'ecommerce_app/app.dart';
void main() { //starting point
  runApp(BaseScreenApp()
  );
}

class BaseScreenApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(theme: ThemeData(
      // bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: Colors.blueGrey)
    ),
      // initialRoute: route1,
      // onGenerateRoute: RouteClass.generator,
routes: {
  'pageOne' :(context) => Pageone(),
  'pageTwo' :(context) => Pagetwo(),
},
      home:NavbarClass(),
      debugShowCheckedModeBanner: false,



    );

  }

}

class HomeClass extends StatelessWidget {
  const HomeClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text("AppBar"),
        backgroundColor: Colors.blue,
        centerTitle: true,
        shape: OutlineInputBorder(
          borderSide:BorderSide(
            // color: Colors.yellowAccent.shade200,
            //  width: 10
          ) ,
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(40),
          topLeft: Radius.elliptical(50, 50))

        ),
        // shadowColor: Colors.pink,
        elevation: 100,

      ),
      body: Column(
        children: [
          Row(
            children: [
              Text("1"),
              Text("2"),
              Text("3"),
            ],
          ), Row(
            children: [
              Text("4"),
              Text("5"),
              Text("6"),
            ],
          ), Row(
            children: [
              Text("7"),
              Text("8"),
              Text("9"),
            ],
          ),

        ],
      ),
    );
  }
}



// class MyApp extends StatelessWidget{
//   @override
//   Widget build (BuildContext context){
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//      home: TAMARA(),
//     );
//   }
// }


