import 'package:flutter/material.dart';
import 'package:flutter_section4/pass%20data/pass%20with%20arguments/pageFour.dart';
import 'package:flutter_section4/pass%20data/pass%20with%20arguments/pageTwo.dart';

class Pagethree extends StatefulWidget {
  const Pagethree({super.key});

  @override
  State<Pagethree> createState() => _PagethreeState();
}

class _PagethreeState extends State<Pagethree> {
  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
        ),


        body: Form(child:
            Column(
              children: [
                TextFormField(
                  controller: textEditingController1,
                ),
                TextFormField(
                  controller: textEditingController2,
                ),
                ElevatedButton(onPressed: (){
                  Navigator.of(context).push(

                    MaterialPageRoute(builder: (context) => Pagefour(
                      name: textEditingController1.text,
                      major: textEditingController2.text,

                    ))
                  );
                }, child: Text('Login'))
              ],
            )
        )




    );
  }
}
