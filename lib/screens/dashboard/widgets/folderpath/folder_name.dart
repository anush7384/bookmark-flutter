import 'package:flutter/material.dart';

class FolderName extends StatelessWidget {
  final String text;
  const FolderName({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.folder,
          color: Colors.blue,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 5.0,
            right: 5.0,
          ),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 15.0,
            ),
          ),
        ),
      ],
    );
  }
}
