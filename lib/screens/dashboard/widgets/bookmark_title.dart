// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/basic.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class BookmarkTitle extends StatefulWidget {
  const BookmarkTitle({super.key});

  @override
  State<BookmarkTitle> createState() => _BookmarkTitleState();
}

class _BookmarkTitleState extends State<BookmarkTitle> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
      children: [
        Text(
          "Title Lorem Ipsum",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
        ),
        Icon(Icons.more_vert_rounded),
      ],
    );
  }
}
