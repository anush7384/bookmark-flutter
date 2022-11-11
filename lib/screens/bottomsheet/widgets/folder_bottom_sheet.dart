import '../widgets/folder_middle_widget.dart';

import 'package:flutter/material.dart';

import '../../../utils/helpers/bottom_modal.dart';

class FolderBottomSheet extends StatelessWidget {
  const FolderBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showModal(
          context: context,
          logintext: "Submit",
          title: "Create Folder",
          middlewidget: FolderMiddleWidget(),
        );
      },
      child: const Text('Create Folder button'),
    );
  }
}
