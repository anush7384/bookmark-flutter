import './widgets/forget_password_text.dart';
import './widgets/input_text_field.dart';
import 'package:flutter/material.dart';

import 'widgets/button.dart';

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
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: const Text(
          "Sign In",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 100.0,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: MyTextfield(
                  hintText: 'Enter your Email',
                  controller: emailcontroller,
                  obscure: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: MyTextfield(
                  hintText: 'Enter your password',
                  controller: passwordcontroller,
                  obscure: true,
                ),
              ),
              const Button(
                text: 'Login',
              ),
              const MyForgetPasswordText()
            ],
          ),
        ),
      ),
    );
  }
}
