import 'package:flutter/material.dart';

import '../../bottomsheet/widgets/folder_bottom_sheet.dart';
import '../widgets/bookmark_folder.dart';
import '../widgets/bookmark_image.dart';
import '../widgets/bookmark_title.dart';
import '../../bottomsheet/widgets/move_bottom_sheet.dart';

class BookmarkContainer extends StatefulWidget {
  const BookmarkContainer({super.key});

  @override
  State<BookmarkContainer> createState() => _BookmarkContainerState();
}

class _BookmarkContainerState extends State<BookmarkContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(
          top: 10,
          right: 10,
          left: 10,
          bottom: 10,
        ),
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            color: Colors.grey,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: BookmarkImage(),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 5.0),
              child: BookmarkTitle(),
            ),
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
              child: BookmarkPath(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: FolderBottomSheet(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: MoveBottomSheet(),
            ),
          ],
        ),
      ),
    );
  }
}
