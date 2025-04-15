import 'package:flutter/material.dart';
import 'package:flutter_section4/Screens/homeScreen.dart';
import 'package:flutter_section4/main.dart';
import 'package:flutter_section4/midProject/favScreen.dart';
import 'package:flutter_section4/midProject/home.dart';
import 'package:flutter_section4/midProject/product.dart';

class NavbarClass extends StatefulWidget {
  const NavbarClass({super.key});

  @override
  State<NavbarClass> createState() => _NavbarClassState();
}
List<Product> allProducts = [
  Product(name: 'coffee', price: 1, isFav: false),
  Product(name: 'ice latte', price: 2.5, isFav: false),
  Product(name: 'mocha', price: 2.75, isFav: false),
  Product(name: 'latte', price: 2.5, isFav: false),
  Product(name: 'espresso', price: 1, isFav: false),
  Product(name: 'coffee', price: 1, isFav: false),
  Product(name: 'ice latte', price: 2.5, isFav: false),
  Product(name: 'mocha', price: 2.75, isFav: false),
  Product(name: 'latte', price: 2.5, isFav: false),
  Product(name: 'espresso', price: 1, isFav: false),
];

List<Product> favList = [];

onPressed(Product product){
  product.isFav = !product.isFav;
  if(product.isFav) {
    favList.add(product);
  }
  else{
    favList.removeWhere((item) => item.isFav == false);
  }

}
int index = 0;

List<Widget> pages = [
  HomeScreenNav(items:allProducts ,onPerssed:onPressed ,),
  FavScreen(favaroit: favList)

];



class _NavbarClassState extends State<NavbarClass> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      bottomNavigationBar: BottomNavigationBar(items: 
      [
       BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home") ,
       BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favorite") ,
       BottomNavigationBarItem(icon: Icon(Icons.message),label: "message") ,
       BottomNavigationBarItem(icon: Icon(Icons.person),label: "profile") ,
      ],
       selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (v){
        setState(() {
          index = v;
        });

        },
        currentIndex: index,

      ),
      body: pages[index],
    );
  }
}
