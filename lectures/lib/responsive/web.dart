import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_section4/responsive/style/btn.dart';
import 'package:flutter_section4/responsive/style/txt.dart';

class WebScreen extends StatefulWidget {
  const WebScreen({super.key});

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text('Logo',style: tabText,),
        actions: [
          Text('Home',style: tabText,),
          SizedBox(width: 50,),
          Text('Message',style: tabText,),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              Container(
                // color: Colors.red,
                // width: MediaQuery.of(context).size.width ,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Building user interfaces with Flutter",style: headText,),
                    SizedBox(height: 30,),
                    Text('''Flutter widgets are built using a modern framework that takes inspiration from React.\nThe central idea is that you build your UI out of widgets.\nWidgets describe what their view should look\nlike given their current configuration and state.\nWhen a widget\'s state changes, the widget rebuilds its description,\nwhich the framework diffs against the previous description in order\nto determine the minimal changes needed in the underlying render tree\nto transition from one state to the next.''',
                      style: bodyText,),
                  ],
                ),
              ),
              SharedBtn()
                ]
          ),
        ),
      ),
    );
  }
}
