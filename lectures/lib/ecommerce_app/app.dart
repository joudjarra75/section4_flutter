import 'package:flutter/material.dart';

class TAMARA extends StatelessWidget {
  const TAMARA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width/3,
              height: 50,
              color: Colors.grey,
              child: Row(
                children: [
                  Icon(Icons.search),
                  Text('Search'),

                ],
              ),
            ),
            Icon(Icons.notifications)

          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
      )
      )

    );
  }
}
