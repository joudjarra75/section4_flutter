import 'package:flutter/material.dart';
import 'package:flutter_section4/responsive/style/txt.dart';

class SharedBtn extends StatefulWidget {
  const SharedBtn({super.key});

  @override
  State<SharedBtn> createState() => _SharedBtnState();
}

class _SharedBtnState extends State<SharedBtn> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      
    }, child: Text('Go to screen',
      style:btnText ,
    ),
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.green
    ),);
  }
}
