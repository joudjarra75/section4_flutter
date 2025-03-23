import 'package:flutter/material.dart';

class TaskGridViweClass extends StatefulWidget {

  @override
  State<TaskGridViweClass> createState() => _Task_gridViweState();
}

class _Task_gridViweState extends State<TaskGridViweClass> {
  List<String> img = ['assets/images/h.png',
    'assets/images/h.png',
    'assets/images/h.png','assets/images/h.png',
    'assets/images/h.png','assets/images/h.png',

  ];
  List <String> name = ['A','B','C','D','E','F'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
     appBar: AppBar(
       title: Text('Flutter GridView Demo'),
     ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Card(
              child: Container(
                child: Text(name[index]),
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(img[index]),
                  fit: BoxFit.cover)
                ),
              ),
              color: Colors.grey,
            );
          },
        itemCount: img.length,
      ),
    );
  }
}
