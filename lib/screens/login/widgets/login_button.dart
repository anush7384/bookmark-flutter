// ignore_for_file: prefer_const_constructors, unused_local_variable, sized_box_for_whitespace

import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class MyLoginButton extends StatefulWidget {
  const MyLoginButton({super.key});

  @override
  State<MyLoginButton> createState() => _MyLoginButtonState();
}

class _MyLoginButtonState extends State<MyLoginButton> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width*0.5;
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        height: 50,
        width: width,
        child: TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: Colors.blueAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            )
             ),
          onPressed: () {},
          child: Text('Login', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20.0),),
        ),
      ),
    );
  }
}
