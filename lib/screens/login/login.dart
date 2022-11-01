// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:bookmark/screens/login/widgets/forgetpasswordtext.dart';
import 'package:bookmark/screens/login/widgets/inputtextfield.dart';
import 'package:bookmark/screens/login/widgets/loginbutton.dart';
import 'package:flutter/material.dart';


class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: Colors.black,),
        title: Text("Sign In", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 100.0,
      ),
      body: 
        Center(
          child: Container(
            padding: EdgeInsets.all(10),
              child: Column(
                children: [
                   Padding(
                     padding: const EdgeInsets.only(bottom: 30),
                     child: MyTextfield(hinttext: 'Enter your Email', controller: emailcontroller, obscure: false,),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(bottom: 30.0),
                     child: MyTextfield(hinttext: 'Enter your password', controller: passwordcontroller, obscure: true,),
                   ),
                   MyLoginButton(),
                   MyForgetPasswordText()
                ],
              ),
            
          ),
        ),
      
    );
  }
}