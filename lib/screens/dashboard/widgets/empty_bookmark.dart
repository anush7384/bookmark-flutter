import 'package:bookmark/utils/color_constants.dart';
import 'package:flutter/material.dart';

class EmptyBookmark extends StatelessWidget {
  const EmptyBookmark({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.only(left:10.0,right:10.0),
        child: Container(
          padding: const EdgeInsets.only(bottom:40.0),
          decoration: const BoxDecoration(
            // color: Color.fromARGB(255, 230, 229, 229),
          ),
          child:Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              Icon(Icons.bookmark_rounded,
                color:blue,
                size:35.0,
              ),
              const Text('No bookmarks Found',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color:fontgrey,
              ),
              ),
              const Padding(
                padding: EdgeInsets.only(top:5.0),
                child: Text('keep content organised'),
              ),
              const Text('with folders and subfolders')
          ],),)
        ),
      ),
    );
  }
}
