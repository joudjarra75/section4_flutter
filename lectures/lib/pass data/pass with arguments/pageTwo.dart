import 'package:flutter/material.dart';

class Pagetwo extends StatefulWidget {
  const Pagetwo({super.key});

  @override
  State<Pagetwo> createState() => _PagetwoState();
}

class _PagetwoState extends State<Pagetwo> {
  @override
  Widget build(BuildContext context) {
    //final args = ModalRoute.of(context)?.settings.arguments as List;
    final args2=ModalRoute.of(context)?.settings.arguments.toString();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),

        body: Center(
          child: Column(
            children: [
              // Text(args[0]),
              //  Text(args[1]),
              //  Text(args[2]),
              Text('hello , $args2')


            ],
          ),
        )
    );
  }
}
