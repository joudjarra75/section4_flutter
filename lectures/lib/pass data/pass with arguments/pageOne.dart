import 'package:flutter/material.dart';
import 'package:flutter_section4/pass%20data/pass%20with%20arguments/pageTwo.dart';

class Pageone extends StatefulWidget {
  const Pageone({super.key});

  @override
  State<Pageone> createState() => _PageoneState();
}

class _PageoneState extends State<Pageone> {
  //int x=10;
  TextEditingController c1= TextEditingController();
  // List<String> userData = ['Omer','20','CS']; //data
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
      ),

      body: Center(
        child: Column(
          children: [
            Text("Welcome"),
            SizedBox(height: 30,),
            TextField(
              controller:c1,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink[100]
              )
              ,onPressed: (){
                Navigator.of(context).pushNamed('pageTwo',arguments: c1.text);

                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Pagetwo()));
            }, child: Text("GO"),

            )

          ],
        ),
      )
    );
  }
}
