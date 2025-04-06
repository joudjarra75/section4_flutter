import 'package:flutter/material.dart';
import 'package:flutter_section4/navigation/const_route.dart';

class Screentwo extends StatefulWidget {
  const Screentwo({super.key});

  @override
  State<Screentwo> createState() => _ScreentwoState();
}

class _ScreentwoState extends State<Screentwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Screen Two'),

      ),

      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.of(context).pushReplacementNamed(route1);

        }, child: Text("Back to Screen one")),
      ),
    );
  }
}
