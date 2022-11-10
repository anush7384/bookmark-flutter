import 'package:bookmark/screens/signup/widgets/redirect_login.dart';
import 'package:bookmark/screens/signup/widgets/signup_button.dart';
import 'package:bookmark/screens/signup/widgets/signup_google.dart';
import 'package:bookmark/screens/signup/widgets/terms_text.dart';
import 'package:flutter/material.dart';
import 'package:bookmark/screens/signup/widgets/custom_textfield.dart';

class MidSignup extends StatefulWidget {
  const MidSignup({super.key});

  @override
  State<MidSignup> createState() => _MidSignup();
}

class _MidSignup extends State<MidSignup> {
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 1.0,
      widthFactor: 0.9,
      child: Container(
        decoration: const BoxDecoration(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0, top: 45.0),
              child: CustomTextfield(
                hintText: 'Name',
                controller: nameController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: CustomTextfield(
                hintText: 'Email',
                controller: emailController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: CustomTextfield(
                hintText: 'Password',
                controller: passwordController,
              ),
            ),
            const Terms(),
            const SizedBox(height: 15.0),
            const SignupButton(),
            Container(
              height: 40.0,
              decoration: const BoxDecoration(),
              child: const Center(
                child: Text(
                  'Or with',
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SignupGoogle(),
            const SizedBox(height: 15.0),
            const RedirectLogin(),
          ],
        ),
      ),
    );
  }
}
