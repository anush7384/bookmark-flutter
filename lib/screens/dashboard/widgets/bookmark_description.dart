// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class BookmarkDescription extends StatefulWidget {
  const BookmarkDescription({super.key});

  @override
  State<BookmarkDescription> createState() => _BookmarkDescriptionState();
}

class _BookmarkDescriptionState extends State<BookmarkDescription> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
            style: TextStyle(fontSize: 15.0),
          ),
        ),
      ],
    );
  }
}
