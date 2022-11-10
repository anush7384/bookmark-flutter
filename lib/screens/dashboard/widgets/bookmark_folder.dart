// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:bookmark/screens/dashboard/widgets/folderpath/folder_name.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class BookmarkPath extends StatefulWidget {

  const BookmarkPath({super.key});

  @override
  State<BookmarkPath> createState() => _BookmarkPathState();
}

class _BookmarkPathState extends State<BookmarkPath> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      FolderName(text: 'folder 1'),
      Icon(Icons.arrow_right),
      FolderName(text: 'folder 2')
    ]);
  }
}