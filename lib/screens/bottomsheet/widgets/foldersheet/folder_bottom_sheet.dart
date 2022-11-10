// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:bookmark/screens/bottomsheet/widgets/foldersheet/folder_middle_widget.dart';
// import 'package:bookmark/screens/login/widgets/input_text_field.dart';

import 'package:flutter/material.dart';

import '../../../../utils/helpers/bottom_modal.dart';

class FolderBottomSheet extends StatelessWidget {
  const FolderBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          showModal(
            context: context,
            logintext: "Submit",
            title: "Create Folder",
            middlewidget: FolderMiddleWidget(),
          );
        },
        child: Text('Create Folder'),
      ),
    );
  }
}
