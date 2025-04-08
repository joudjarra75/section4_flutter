import 'package:flutter/material.dart';
import 'package:flutter_section4/navigation/const_route.dart';

class Screenone extends StatefulWidget {
  const Screenone({super.key});

  @override
  State<Screenone> createState() => _ScreenoneState();
}

class _ScreenoneState extends State<Screenone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: InkWell
          (onTap: (){
            print("Yellow");
        },
            child: Text('Screen One')),

      ),

      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.of(context).pushReplacementNamed(route2);
        }, child: Text("Go to Screen two")),
      ),
    );
  }
}
