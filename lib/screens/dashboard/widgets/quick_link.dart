import 'package:bookmark/screens/dashboard/widgets/bottom_quick_link.dart';
import 'package:flutter/material.dart';
import 'package:bookmark/utils/color_constants.dart';

class QuickLink extends StatefulWidget {
  const QuickLink({super.key});

  @override
  State<QuickLink> createState() => _QuickLinkState();
}

class _QuickLinkState extends State<QuickLink> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:280.0,
      padding:const EdgeInsets.only(left: 15.0,right:10.0,top:10.0),
      decoration:  BoxDecoration(
        color:blue,
      ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Add Quick Link',
          style: TextStyle(
            color:Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          ),
          const SizedBox(height:20.0),
          const Text(
            'URL',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.0,
            ),
          ),
          Container(
            margin:const EdgeInsets.only(top:3.0),
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            height:35.0,
            decoration: const BoxDecoration(),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(218, 107, 107, 249),
                 enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color:quicklinkColor, width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color:quicklinkColor, width: 1.0),
                ),
              ),
            ),
          ),
          const BottomQuickLink(),
        ],
      ),
    );
  }
}