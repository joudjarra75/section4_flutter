import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  // int x = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
     appBar:AppBar(
       title: Text("App bar",
       style: TextStyle(
           fontFamily: 'fontTest'
       ),),
       backgroundColor:Colors.pink[200],
       centerTitle: true,

     ) ,
     body: Container(
       // width: double.infinity,
       width:width,
       // color: Colors.red,
       child: Column(//whole height
         //x-axis -cross according col
          crossAxisAlignment: CrossAxisAlignment.start,
         //y-axis - main according col
         mainAxisAlignment: MainAxisAlignment.start,
         children: [
           Text("Ramadan kareem",
           // style: TextStyle(
           //   fontSize: 20,
           //   fontWeight: FontWeight.bold,
           // ),
           ),
           Text("Ramadan kareem", style:TextStyle(
             shadows: [
               Shadow(color: Colors.grey,offset: Offset(5, 5),blurRadius:10 )
             ],

           ),

           ),

           Text("Ramadan kareem"),

           SizedBox(
             height: 50,
           ),
           Container(

             // color: Colors.yellow,
             height: 200,
             child: Row(
               //x-axis -main according row
               mainAxisAlignment: MainAxisAlignment.center,
               //y-axis - cross according row
                crossAxisAlignment: CrossAxisAlignment.start,

               children: [
                 Text("Hello",
                   style: TextStyle(
                     fontSize: 20,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
                 SizedBox(
                   width: 50,
                 ),
                 Icon(Icons.add_a_photo)
               ],
             ),
           ),
           
         ],
       ),
     ),
    

   );
  }
}