import 'package:flutter/material.dart';
import 'package:flutter_section4/custom_widgets/cardWidget.dart';

class cridViewClass extends StatefulWidget {
  const cridViewClass({super.key});

  @override
  State<cridViewClass> createState() => _cridViewClassState();
}

class _cridViewClassState extends State<cridViewClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GRIDVIEW'),

      ),
      body: GridView(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2 ),
      children: [
        Cardwidget(txt: 'tamara', icon: Icons.ice_skating),
        Cardwidget(txt: 'tamara', icon: Icons.ice_skating),
        Cardwidget(txt: 'tamara', icon: Icons.ice_skating),
        Cardwidget(txt: 'tamara', icon: Icons.ice_skating),
        Cardwidget(txt: 'tamara', icon: Icons.ice_skating),
        Cardwidget(txt: 'tamara', icon: Icons.ice_skating),
        Cardwidget(txt: 'tamara', icon: Icons.ice_skating),
        Cardwidget(txt: 'tamara', icon: Icons.ice_skating),
        Cardwidget(txt: 'Raghad', icon: Icons.ice_skating),
        Cardwidget(txt: 'Raghad', icon: Icons.ice_skating),
        Cardwidget(txt: 'Raghad', icon: Icons.ice_skating),
        Cardwidget(txt: 'Raghad', icon: Icons.ice_skating),
      ],
        scrollDirection: Axis.horizontal,
        reverse: true,
        physics: BouncingScrollPhysics(),
     ),
    );

  }
}
