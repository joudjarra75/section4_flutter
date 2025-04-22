import 'package:flutter/material.dart';

class InkwellExample extends StatefulWidget {
  const InkwellExample({super.key});

  @override
  State<InkwellExample> createState() => _InkwellExampleState();
}

class _InkwellExampleState extends State<InkwellExample> {
  @override
  bool check = true;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            obscureText: check,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
               prefixIcon: Icon(Icons.password),
              // prefix: Icon(Icons.favorite),
              suffixIcon: InkWell(
                onTap: (){
                  setState(() {
check = !check;
                  });
                },

                  child:check ? Icon(Icons.visibility_off): Icon(Icons.remove_red_eye_outlined))
            ),
          ),
        ),
      ),
    );
  }
}
