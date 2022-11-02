import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: TextButton(
        onPressed: (){
          Navigator.pop(context);
        },
        child:const Text('Login Page'),
      ),
    );
  }
}