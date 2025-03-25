import 'package:flutter/material.dart';
import 'package:flutter_section4/custom_widgets/style/colors.dart';

class TextfieldClass extends StatefulWidget {
  const TextfieldClass({super.key});

  @override
  State<TextfieldClass> createState() => _TextfieldClassState();
}

class _TextfieldClassState extends State<TextfieldClass> {
  String? input ;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
    backgroundColor: appBgColor,
),
      body: SafeArea(child:
      Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: controller,
                keyboardType: TextInputType.text,
                onChanged: (track){
            setState(() {
              input = track;
            });
                },

                decoration:InputDecoration(
                   enabledBorder: OutlineInputBorder(),
                   focusedBorder: OutlineInputBorder(
                     borderSide: BorderSide(
                       color: Colors.orange,
                       width: 4,
                     ),
                     borderRadius: BorderRadius.circular(30),
                     // gapPadding: 10
                   ),
                  // focusColor: Colors.yellow,
                 // disabledBorder:OutlineInputBorder(),
                  hintText: 'email@gg.com',
                  // label: Text("Email"),
                  contentPadding: EdgeInsets.all(20),
                  counter: Text('1/3'),
                  // filled: true,
                  // fillColor: Colors.orange[100],
                  helper: Text("help"),
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                  icon: Icon(Icons.cabin_outlined),
                  suffixIcon: Icon(Icons.padding),


                  // errorBorder:OutlineInputBorder(),
                  // errorText: 'error',






                  // border:OutlineInputBorder()
                ) ,

              ),
              SizedBox(height: 30,),
              Text('$input'),
              SizedBox(height: 30,),
              Text('${controller.text}'),
              // TextField(
              //
              // ),


            ],
          ),
        ),
      )),
    );
  }
}
