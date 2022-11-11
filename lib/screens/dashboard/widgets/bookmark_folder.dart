import '../widgets/folderpath/folder_name.dart';

import 'package:flutter/material.dart';

class BookmarkPath extends StatelessWidget {
  const BookmarkPath({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        FolderName(text: 'folder 1'),
        Icon(Icons.arrow_right),
        FolderName(text: 'folder 2')
      ],
    );
  }
}
