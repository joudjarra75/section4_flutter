import 'package:flutter/material.dart';

class GridviewbuilderClass extends StatefulWidget {
  const GridviewbuilderClass({super.key});

  @override
  State<GridviewbuilderClass> createState() => _GridviewbuilderClassState();
}

class _GridviewbuilderClassState extends State<GridviewbuilderClass> {
  List <String> products = ['bag','shoes','T-shirt','Scarf'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
      GridView.builder(
        itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:3),
          itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(

            child: Text(products[index]),
            width: 20,
            height: 20,
            color: Colors.yellow,
          ),
        );

          })),
    );
  }
}
