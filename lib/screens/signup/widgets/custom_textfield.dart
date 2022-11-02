import 'package:bookmark/utils/color_constants.dart';
import 'package:flutter/material.dart';

class CustomTextfield extends StatefulWidget {
  final String hintText;
  final bool obscure;
  final TextEditingController controller;
  const CustomTextfield(
      {super.key,
      required this.hintText,
      required this.obscure,
      required this.controller});

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  bool hide = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      height: 45.0,
      child: TextField(
        obscureText: widget.hintText == 'Password' ? hide : true,
        controller: widget.controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 10.0, bottom: 20.0),
          hintText: widget.hintText,
          suffix: widget.hintText == 'Password'
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      if (hide) {
                        hide = false;
                      } else {
                        hide = true;
                      }
                    });
                  },
                  icon: Icon(
                      hide == false ? Icons.remove_red_eye : Icons.password),
                  color: Colors.grey.shade400,
                )
              : IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.abc),
                ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
                color: enabledInputColor, width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(color: focusedInputColor, width: 1.0),
          ),
        ),
      ),
    );
  }
}
