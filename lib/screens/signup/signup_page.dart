import 'package:bookmark/screens/signup/widgets/signup_mid.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPage();
}

class _SignupPage extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 100.0,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_rounded,
          color: Colors.black,
        ),
        centerTitle: true,
        title: const Text('Sign Up',
            style: TextStyle(
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
      ),
      body: const Center(child: MidSignup()),
    ));
  }
}
