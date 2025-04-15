import 'package:flutter/material.dart';
import 'package:flutter_section4/midProject/product.dart';

class Cardclass extends StatefulWidget {
  Product product;
  Function(Product) onPerss;

  Cardclass({required this.product ,required this.onPerss});

  @override
  State<Cardclass> createState() => _CardclassState();
}

class _CardclassState extends State<Cardclass> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Stack(
          children: [
            Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Text(widget.product.name),
                    Text(widget.product.price.toString()),

                  ],
                )
            ),
            InkWell(
              child:widget.product.isFav? Icon(Icons.favorite,color: Colors.red,) : Icon(Icons.favorite_border),
              onTap: (){
                setState(() {
                  widget.onPerss(widget.product);

                });
              },
            )


          ],
        )




    );
  }
}
