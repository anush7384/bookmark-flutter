import 'package:bookmark/utils/color_constants.dart';
import 'package:flutter/material.dart';

class Terms extends StatefulWidget {
  const Terms({super.key});

  @override
  State<Terms> createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
        decoration: const BoxDecoration(),
        child: Row(children: [
          Checkbox(value: false, onChanged: (bool? value) {}),
          Flexible(
              child: RichText(
                  text: TextSpan(children: [
            const TextSpan(
              text: "By signing up you agree to the ",
              style: TextStyle(color: Colors.black),
            ),
            TextSpan(
              text: "terms of Service and Privacy Policy",
              style: TextStyle(color: blue),
            ),
          ])))
        ]));
  }
}