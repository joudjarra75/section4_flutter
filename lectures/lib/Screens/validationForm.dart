import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class Validationform extends StatefulWidget {
  const Validationform({super.key});

  @override
  State<Validationform> createState() => _ValidationformState();
}

class _ValidationformState extends State<Validationform> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
      Form(
        key: _formKey,
        child: Column(
          children: [
            //img - login
            Lottie.asset('https://lottie.host/1bc336fe-3cf2-4db4-94de-1511b1cb29fd/r15wVcWDVA.lottie'),

            //text field 1  (email)
            TextFormField(),
            // text field 2 (pass)
            TextFormField(),


            //btn
          ],
        ),
      )
      ),
    );
  }
}
