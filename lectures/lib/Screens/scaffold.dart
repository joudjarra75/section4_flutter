import 'package:flutter/material.dart';

class ScaffoldClass extends StatefulWidget {
  const ScaffoldClass({super.key});

  @override
  State<ScaffoldClass> createState() => _ScaffoldClassState();
}

class _ScaffoldClassState extends State<ScaffoldClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //1 appBar
      appBar:AppBar(
        //1.1 title
        title: Text("App bar"),
        //1.2 leading
        // leading: Icon(Icons.settings),
        //1.3 actions
        // actions: [
        //   Icon(Icons.add),
        //   SizedBox(width: 10,),
        //   Icon(Icons.add_a_photo),
        //   Icon(Icons.add),
        //   Icon(Icons.add_a_photo),
        // ],
        //1.4 bg
        backgroundColor: Colors.blue,
        //1.5 flexiblespace
        flexibleSpace:
         Padding(
           padding: const EdgeInsets.only(top: 200),
           child: Text("flexiblespace"),
         ),
        //1.6 bootom
        bottom:PreferredSize(preferredSize: Size(100, 200), child: Text("bottom")),
        

      ) ,
      //2. body

      //3.floating action button
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Text("data"),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      // 4.drawer
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(height: 100,),
            CircleAvatar(radius: 60,
            child: Icon(Icons.person),),
           listTileFun(Icon(Icons.person), Text('profile')),
           listTileFun(Icon(Icons.settings), Text('setting')),
           listTileFun(Icon(Icons.logout), Text('logout')),

          ],
        ),
      ),

      endDrawer: Drawer(
        child:   Column(
      children: [
      SizedBox(height: 100,),
      CircleAvatar(radius: 60,
        child: Icon(Icons.person),),
      listTileFun(Icon(Icons.person), Text('profile')),
      listTileFun(Icon(Icons.settings), Text('setting')),
      listTileFun(Icon(Icons.logout), Text('logout')),

      ],)

      ),
    );
  }
  Widget listTileFun(Widget icon , Widget txt){
    return ListTile(
      leading: icon,
      title:txt ,
    );
  }
}
