import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class RedirectLogin extends StatelessWidget {
  const RedirectLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: RichText(
        text: TextSpan(
          children: [
            const TextSpan(
              text: "Already have an account? ",
              style: TextStyle(
                color: Color.fromARGB(255, 159, 157, 157),
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
              ),
            ),
            TextSpan(
                text: "Login",
                style: const TextStyle(
                  color: Color.fromARGB(255, 99, 113, 248),
                  fontSize: 14.0,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushNamed(context, '/login');
                  }),
          ],
        ),
      ),
    );
  }
}
