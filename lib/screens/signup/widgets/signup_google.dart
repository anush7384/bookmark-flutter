import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignupGoogle extends StatefulWidget {
  const SignupGoogle({super.key});

  @override
  State<SignupGoogle> createState() => SignupGoogleState();
}

class SignupGoogleState extends State<SignupGoogle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      padding: const EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(255, 212, 211, 211),
          width: 0.5,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: SignInButton(
        Buttons.Google,
        text: "Sign up with Google",
        onPressed: () {},
        elevation: 0,
        padding: const EdgeInsets.only(left: 15.0),
      ),
    );
  }
}
