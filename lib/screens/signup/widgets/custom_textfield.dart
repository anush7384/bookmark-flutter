import 'package:flutter/material.dart';

import '../../../utils/color_constants.dart';

class CustomTextfield extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  const CustomTextfield(
      {super.key, required this.hintText, required this.controller});

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
        obscureText: widget.hintText == 'Password' ? hide : false,
        controller: widget.controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 10.0, bottom: 20.0),
          hintText: widget.hintText,
          suffix: widget.hintText == 'Password'
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      hide = !hide;
                    });
                  },
                  icon: const Icon(Icons.remove_red_eye),
                  color: hide == true
                      ? Colors.grey.shade400
                      : const Color.fromARGB(255, 243, 104, 94),
                )
              : null,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(color: ColorTheme().enabledInputColor, width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide:
                BorderSide(color: ColorTheme().focusedInputColor, width: 1.0),
          ),
        ),
      ),
    );
  }
}
