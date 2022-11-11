import 'package:flutter/material.dart';

import '../../login/widgets/input_text_field.dart';

class FolderMiddleWidget extends StatelessWidget {
  FolderMiddleWidget({super.key});
  final foldercontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(
            top: 35.0,
            right: 15.0,
            left: 15.0,
          ),
          child: Text(
            "Folder Name",
            style: TextStyle(
              fontSize: 15.0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
            right: 15.0,
            left: 15.0,
          ),
          child: MyTextfield(
            hintText: "Enter folder name",
            controller: foldercontroller,
            obscure: false,
          ),
        ),
      ],
    );
  }
}
