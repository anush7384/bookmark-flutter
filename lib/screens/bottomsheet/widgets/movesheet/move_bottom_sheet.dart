// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bookmark/screens/bottomsheet/widgets/movesheet/folder_list.dart';
import 'package:bookmark/utils/helpers/bottom_modal.dart';
import 'package:flutter/material.dart';

// import '../bottom_sheet_name.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class MoveBottomSheet extends StatefulWidget {
  const MoveBottomSheet({super.key});

  @override
  State<MoveBottomSheet> createState() => _MoveBottomSheetState();
}

class _MoveBottomSheetState extends State<MoveBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          showModal(
              context: context,
              title: "Move Folder",
              logintext: "Move",
              middlewidget: FolderList());
        },
        child: Text('Move Sheet'),
      ),
    );
  }
}
