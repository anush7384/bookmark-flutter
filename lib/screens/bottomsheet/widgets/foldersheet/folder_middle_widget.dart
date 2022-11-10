// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import '../../../login/widgets/input_text_field.dart';
import '../bottom_sheet_title.dart';

class FolderMiddleWidget extends StatelessWidget {
  FolderMiddleWidget({super.key});
  final foldercontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35.0, right: 15.0, left: 15.0),
            child: SheetTitle(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 15.0, left: 15.0),
            child: MyTextfield(
                hinttext: "Enter folder name",
                controller: foldercontroller,
                obscure: false),
          ),
        ],
      ),
    );
  }
}
