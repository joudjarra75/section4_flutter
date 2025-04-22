import 'package:flutter/material.dart';
import 'package:flutter_section4/responsive/mobile.dart';
import 'package:flutter_section4/responsive/tablet.dart';
import 'package:flutter_section4/responsive/web.dart';

class Layoutresponsive extends StatefulWidget {
  const Layoutresponsive({super.key});

  @override
  State<Layoutresponsive> createState() => _LayoutresponsiveState();
}

class _LayoutresponsiveState extends State<Layoutresponsive> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context ,BoxConstraints constraint){
      if(constraint.maxWidth < 600){
        return MobileScreen();
      }
      if(constraint.maxWidth < 1400){
        return TabletScreen();
      }
      return  WebScreen();

    });
  }
}
