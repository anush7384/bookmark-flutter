// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class FolderList extends StatefulWidget {
  const FolderList({super.key});

  @override
  State<FolderList> createState() => _FolderListState();
}

class _FolderListState extends State<FolderList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.folder,
              color: Colors.blue,
            ),
            title: Text('Folder 1'),
          ),
          ListTile(
            leading: Icon(
              Icons.folder,
              color: Colors.blue,
            ),
            title: Text('Folder 2'),
          ),
          ListTile(
            leading: Icon(
              Icons.folder,
              color: Colors.blue,
            ),
            title: Text('Folder 3'),
          ),
          ListTile(
            leading: Icon(
              Icons.folder,
              color: Colors.blue,
            ),
            title: Text('Folder 4'),
          ),
          ListTile(
            leading: Icon(
              Icons.folder,
              color: Colors.blue,
            ),
            title: Text('Folder 5'),
          ),
          ListTile(
            leading: Icon(
              Icons.folder,
              color: Colors.blue,
            ),
            title: Text('Folder 6'),
          ),
        ],
      ),
    );
  }
}
