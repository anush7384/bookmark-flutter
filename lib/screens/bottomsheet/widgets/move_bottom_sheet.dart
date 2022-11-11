import '../widgets/folder_list.dart';
import '../../../utils/helpers/bottom_modal.dart';
import 'package:flutter/material.dart';

class MoveBottomSheet extends StatelessWidget {
  const MoveBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showModal(
            context: context,
            title: "Move Folder",
            logintext: "Move",
            middlewidget: const FolderList());
      },
      child: const Text('Move Sheet'),
    );
  }
}
