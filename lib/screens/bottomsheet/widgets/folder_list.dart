import 'package:flutter/material.dart';

class FolderList extends StatelessWidget {
  const FolderList({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    int i = 1;
    return SizedBox(
      height: 200.0,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: const Icon(
              Icons.folder,
              color: Colors.blue,
            ),
            title: Text(
              'folders ${i++}',
            ),
          );
        },
      ),
    );
  }
}
