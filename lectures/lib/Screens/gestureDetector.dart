import 'package:flutter/material.dart';

class GesturedetectorClass extends StatefulWidget {
  const GesturedetectorClass({super.key});

  @override
  State<GesturedetectorClass> createState() => _GesturedetectorClassState();
}

class _GesturedetectorClassState extends State<GesturedetectorClass> {
  @override
  Color color = Colors.yellow;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  color = Colors.red;
                });
              },
                onDoubleTap: (){
                setState(() {
                  color = Colors.pink;
                });
                },
                onDoubleTapCancel: (){
                  setState(() {
                    color = Colors.purple;
                  });                },
                onLongPress: (){
                  setState(() {
                    color = Colors.orange;
                  });
                },
                child: Text("Tap",style:TextStyle(backgroundColor: color),))
          ],
        ),
      ),
    );
  }
}
