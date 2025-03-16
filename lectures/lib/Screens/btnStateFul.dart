import 'package:flutter/material.dart';

class Btnstateful extends StatefulWidget {
  const Btnstateful({super.key});

  @override
  State<Btnstateful> createState() => _BtnstatefulState();
}

class _BtnstatefulState extends State<Btnstateful> {
  //int x = 0;
  Color color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App bar"),
        backgroundColor:color,
      ),
      backgroundColor: color,
      body: Container(
        // color: Colors.pink,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
             setState(() {
               color = Colors.pink;
             });
            }, child: Text("Pink")),
            ElevatedButton(onPressed: (){
             setState(() {
               color = Colors.yellow;
             });
            }, child: Text("Yellow")),  ElevatedButton(onPressed: (){
             setState(() {
               color = Colors.green;
             });
            }, child: Text("Green")),
          ],
        ),
      ),
    );
  }
}
