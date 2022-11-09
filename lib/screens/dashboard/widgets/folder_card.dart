import 'package:bookmark/utils/color_constants.dart';
import 'package:flutter/material.dart';

class FolderCard extends StatefulWidget {
  const FolderCard({super.key});

  @override
  State<FolderCard> createState() => _FolderCardState();
}

class _FolderCardState extends State<FolderCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      margin: const EdgeInsets.only(top: 5.0, right: 20.0, left: 10.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        // color: Colors.greenAccent,
      ),
      child: Row(
        children: [
          Container(
              width: 20.0,
              height: 30.0,
              decoration: const BoxDecoration(),
              child: const Center(child: Icon(Icons.arrow_right_rounded))),
          Container(
            width: 30.0,
            height: 30.0,
            decoration: const BoxDecoration(),
            child: Center(
                child: Icon(
              Icons.folder,
              color: blue,
            )),
          ),
          Expanded(
            child: Container(
              height: 30.0,
              padding: const EdgeInsets.only(top: 8.0),
              decoration: const BoxDecoration(),
              child: const Text(
                'Folder',
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
            ),
          ),
          Container(
            width: 20.0,
            height: 30.0,
            decoration: const BoxDecoration(),
            child: const Center(
                child: Icon(
              Icons.more_vert_rounded,
              size: 15.0,
            )),
          )
        ],
      ),
    );
  }
}
