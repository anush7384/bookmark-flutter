// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class MySignInText extends StatelessWidget {
  const MySignInText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     
      padding: EdgeInsets.only(top: 50.0),
      child: Column(
        children: [
          Row(
           
            children: [
              Container(
                child: Icon(
                  Icons.arrow_back,
                  size: 24.0,
                ),
              ),
              Container(
           
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ))
            ],
          ),
          SizedBox(height: 100.0)
        ],
      ),
    );
  }
}
