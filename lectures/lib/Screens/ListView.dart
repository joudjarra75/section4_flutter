import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_section4/custom_widgets/cardWidget.dart';
class ListviewClass extends StatefulWidget {
  const ListviewClass({super.key});

  @override
  State<ListviewClass> createState() => _ListviewClassState();
}

class _ListviewClassState extends State<ListviewClass> {
  @override
  List <String> data = ["Irbid","Amman","Aqaba","Zarqa","Ajloun","k","k","k","k"];
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
          Container(
            color: Colors.black,
            height: double.infinity,
            child:ListView.builder(
              reverse: true,
              // physics: BouncingScrollPhysics(),
              itemCount: data.length,
                itemBuilder: (context , j){
              return cardFun(data[j], Icons.add);
            }) ,
            // child: ListView(
            //   reverse: true,
            //   // scrollDirection: Axis.horizontal,
            //   children: [
            //     cardFun("test", Icons.add),
            //     cardFun("test", Icons.add),
            //     cardFun("test", Icons.add),
            //     cardFun("test", Icons.add), cardFun("test", Icons.add),
            //     cardFun("test", Icons.add),
            //     cardFun("test", Icons.add),
            //     cardFun("test", Icons.add), cardFun("test", Icons.add),
            //     cardFun("test", Icons.add),
            //     cardFun("test", Icons.add),
            //     cardFun("aaaa", Icons.add),
            //   ],
            // ),
          )

      ),
    );
  }
   Widget cardFun(String txt , IconData icon){
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
      );
    }



}
