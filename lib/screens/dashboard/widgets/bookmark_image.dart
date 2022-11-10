// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class BookmarkImage extends StatefulWidget {
  const BookmarkImage({super.key});

  @override
  State<BookmarkImage> createState() => _BookmarkImageState();
}

class _BookmarkImageState extends State<BookmarkImage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            ClipRRect(
              child: Image.asset(
                "assets/base-image.jpg",
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              top: -10.0,
              left: -6.0,
              child: Container(
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                        style: BorderStyle.solid)),
                constraints: const BoxConstraints(
                  minWidth: 15,
                  minHeight: 15,
                ),
                child: const Center(
                    child: Icon(
                  Icons.done,
                  color: Colors.grey,
                )),
              ),
            ),
            Positioned(
              top: 15.0,
              right: 10.0,
              child: Container(
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                        style: BorderStyle.solid)),
                constraints: const BoxConstraints(
                  minWidth: 15,
                  minHeight: 15,
                ),
                child: const Center(
                    child: Icon(
                  Icons.favorite,
                  color: Colors.grey,
                )),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
