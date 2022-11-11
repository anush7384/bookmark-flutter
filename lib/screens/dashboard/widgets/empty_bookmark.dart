import 'package:flutter/material.dart';

import '../../../utils/color_constants.dart';

class EmptyBookmark extends StatelessWidget {
  const EmptyBookmark({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Container(
          padding: const EdgeInsets.only(bottom: 40.0),
          decoration: const BoxDecoration(),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.bookmark_rounded,
                  color: ColorTheme().blue,
                  size: 35.0,
                ),
                Text(
                  'No bookmarks Found',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: ColorTheme().fontgrey,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text('keep content organised'),
                ),
                const Text('with folders and subfolders')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
