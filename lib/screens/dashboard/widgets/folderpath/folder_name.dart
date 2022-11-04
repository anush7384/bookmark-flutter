// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FolderName extends StatefulWidget {
  final String text;
  const FolderName({super.key, required this.text});

  @override
  State<FolderName> createState() => _FolderNameState();
}

class _FolderNameState extends State<FolderName> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(Icons.folder, color: Colors.blue,),
          Padding(
            padding: const EdgeInsets.only(left:5.0, right: 5.0),
            child: Text(widget.text, style: TextStyle(fontSize: 15.0),),
          ),
        ],
      ),
    );
  }
}
