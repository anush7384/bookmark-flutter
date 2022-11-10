// import 'package:flutter/cupertino.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bookmark/screens/bottomsheet/widgets/foldersheet/folder_bottom_sheet.dart';
import 'package:bookmark/screens/dashboard/widgets/bookmark_description.dart';
import 'package:bookmark/screens/dashboard/widgets/bookmark_folder.dart';
import 'package:bookmark/screens/dashboard/widgets/bookmark_image.dart';
import 'package:bookmark/screens/dashboard/widgets/bookmark_title.dart';
import 'package:flutter/material.dart';

import '../../bottomsheet/widgets/movesheet/move_bottom_sheet.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class BookmarkContainer extends StatefulWidget {
  const BookmarkContainer({super.key});

  @override
  State<BookmarkContainer> createState() => _BookmarkContainerState();
}

class _BookmarkContainerState extends State<BookmarkContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green,
      body: Container(
        margin: EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 10),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(color: Colors.grey)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: BookmarkImage(),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: BookmarkTitle(),
            ),
            BookmarkDescription(),
            Padding(
              padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
              child: BookmarkPath(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: FolderBottomSheet(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: MoveBottomSheet(),
            ),
          ],
        ),
      ),
    );
  }
}
