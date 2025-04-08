import 'package:flutter/material.dart';
import 'package:flutter_section4/pass%20data/pass%20with%20arguments/argsClass.dart';
import 'package:flutter_section4/pass%20data/pass%20with%20arguments/pageFive.dart';
import 'package:flutter_section4/pass%20data/pass%20with%20arguments/pageTwo.dart';

class Pagefour extends StatefulWidget {
  String name;
  String major;
  Pagefour({required this.name, required this.major});

  @override
  State<Pagefour> createState() => _PagefourState();
}

class _PagefourState extends State<Pagefour> {
  TextEditingController msg = TextEditingController();
  TextEditingController age = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
        ),

        body: Center(
          child: Column(
            children: [
              Text("Hello,${widget.name}"),
              Text("Your major, ${widget.major}"),
              TextField(
                controller: msg,
              ),
              TextField(
                controller: age,
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  Pagefive(args:Arguments(msg: msg.text, age: age.text) ,),));},
                  child: Text("Go"))
            ],
          ),
        )




    );
  }
}
