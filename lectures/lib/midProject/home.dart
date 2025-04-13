import 'package:flutter/material.dart';

class HomeScreenNav extends StatefulWidget {
  const HomeScreenNav({super.key});

  @override
  State<HomeScreenNav> createState() => _HomeScreenNavState();
}

class _HomeScreenNavState extends State<HomeScreenNav> {
  bool isCheck = false;
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
    return Card(
      child: Stack(
        children: [
          Container(
            child: Center(child: Icon(Icons.star)),
          ),
          InkWell(
            child: isCheck? Icon(Icons.favorite,color: Colors.red,) : Icon(Icons.favorite_border),
            onTap: (){
              setState(() {
                isCheck = !isCheck;
              });
            },
          )

          
        ],
      )

      
    

    );
      },
    itemCount: 20,
  ),
)
        ]
      )),
    );
  }
}
