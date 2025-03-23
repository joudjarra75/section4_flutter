import 'package:flutter/material.dart';
class Cardwidget extends StatelessWidget {
  String txt;
  IconData icon;
  Cardwidget({required this.txt, required this.icon});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100,
      child: Card(
        margin: EdgeInsets.all(20),
        color: Colors.pink,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(icon),
            Text(txt)
          ],
        ),
      ),
    )
    ;
  }
}
