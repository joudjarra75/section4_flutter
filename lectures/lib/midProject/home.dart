import 'package:flutter/material.dart';
import 'package:flutter_section4/midProject/cardClass.dart';
import 'package:flutter_section4/midProject/product.dart';

class HomeScreenNav extends StatefulWidget {
  List<Product> items ;
  Function(Product) onPerssed;
   HomeScreenNav({required this.items,required this.onPerssed});

  @override
  State<HomeScreenNav> createState() => _HomeScreenNavState();
}

class _HomeScreenNavState extends State<HomeScreenNav> {
  bool isCheck = false;

  // List<Map<String,dynamic>> products = [
  //   {'name':'latte','price':1.3,'isFav':false},
  //   {'name':'ice latte','price':1.3,'isFav':false},
  //   {'name':'coffee','price':1,'isFav':false},
  //   {'name':'mocha','price':1.5,'isFav':false},
  //   {'name':'spanish latte','price':1.5,'isFav':false},
  //   {'name':'latte','price':1.3,'isFav':false},
  //   {'name':'ice latte','price':1.3,'isFav':false},
  //   {'name':'coffee','price':1,'isFav':false},
  //   {'name':'mocha','price':1.5,'isFav':false},
  //   {'name':'spanish latte','price':1.5,'isFav':false},
  //
  // ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
      Column(
        children:[ Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network('https://png.pngtree.com/png-vector/20221127/ourmid/pngtree-digital-media-play-button-gradient-color-hexagon-marketing-agency-mobile-app-png-image_6482499.png',
              width: 40,
              height: 40,),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Icon(Icons.add_shopping_cart_sharp,
                  size: 25,),
                  Positioned(
                    right: -2,
                    top: -2,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle
                      ),
        
                      child: Padding(
                        padding: const EdgeInsets.all(3),
                        child: Text('1'),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),

Expanded(
  child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
    return Cardclass(product:widget.items[index] ,onPerss: widget.onPerssed,);
      },
    itemCount: widget.items.length,
  ),
)
        ]
      )),
    );
  }
}
