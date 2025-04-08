import 'package:flutter/material.dart';
import 'package:flutter_section4/pass%20data/pass%20with%20arguments/argsClass.dart';
import 'package:flutter_section4/pass%20data/pass%20with%20arguments/pageTwo.dart';

class Pagefive extends StatefulWidget {
  Arguments args;

   Pagefive({required this.args});

  @override
  State<Pagefive> createState() => _PagefiveState();
}

class _PagefiveState extends State<Pagefive> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
        ),

        body: Column(
          children: [
            Text('${widget.args.msg}'),
            Text('${widget.args.age}'),
          ],
        )




    );
  }
}
