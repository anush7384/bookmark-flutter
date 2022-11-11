import 'package:flutter/material.dart';

class BookmarkTitle extends StatelessWidget {
  const BookmarkTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          "Title Lorem Ipsum",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
          ),
        ),
        Icon(Icons.more_vert_rounded),
      ],
    );
  }
}
