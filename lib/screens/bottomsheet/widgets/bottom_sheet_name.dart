// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class SheetName extends StatelessWidget {
  final String title;
  const SheetName({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const Icon(Icons.cancel_outlined),
      ]),
    );
  }
}
