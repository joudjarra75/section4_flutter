import 'package:flutter/material.dart';

class DropdownbtnClass extends StatefulWidget {
  const DropdownbtnClass({super.key});

  @override
  State<DropdownbtnClass> createState() => _DropdownbtnClassState();
}

class _DropdownbtnClassState extends State<DropdownbtnClass> {
  List <String> colors = [
    'red',
    'pink',
    'yellow',
     'Select value'
  ];
  String? initValue = 'Select value';
  Color c = Colors.white;
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: c,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: DropdownButton(
          value:initValue,
          items: colors.map((color) { //color = red
           return DropdownMenuItem(child: Text(color),value:color,);
          }).toList(),
          onChanged: (tamara){
            setState(() {
              initValue = tamara;

            });

          },


        ),
      ),
    );
  }
}
