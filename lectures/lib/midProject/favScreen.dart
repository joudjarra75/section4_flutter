import 'package:flutter/material.dart';
import 'package:flutter_section4/midProject/product.dart';
class FavScreen extends StatefulWidget {
  List <Product> favaroit;
   FavScreen({required this.favaroit});

  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return Card(
        child: Column(
          children: [
            Text(widget.favaroit[index].name),
            Text(widget.favaroit[index].price.toString()),
          ],
        ),
      );


    },
    itemCount: widget.favaroit.length,);
  }
}
