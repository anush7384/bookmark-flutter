import 'package:flutter/material.dart';

import '../../../utils/color_constants.dart';

class DrawerButton extends StatefulWidget {
  final String type;
  final IconData icon;
  const DrawerButton({super.key, required this.type, required this.icon});

  @override
  State<DrawerButton> createState() => _DrawerButtonState();
}

class _DrawerButtonState extends State<DrawerButton> {
  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: const EdgeInsets.only(left: 10.0, right: 20.0),
    //   child: ListTile(
    //     dense: true,
    //     shape:
    //         RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    //     tileColor: const Color.fromARGB(255, 172, 188, 247),
    //     leading: Icon(Icons.favorite, color: blue),
    //     title: const Text(
    //       'Favourites',
    //       style: TextStyle(
    //         fontSize: 16.0,
    //       ),
    //     ),
    //   ),
    // );
    return Container(
        height: 40.0,
        margin: const EdgeInsets.only(top: 10.0, left: 10.0, right: 20.0),
        padding: const EdgeInsets.only(left: 5.0),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          color: Color.fromARGB(255, 190, 203, 247),
        ),
        child: Row(
          children: [
            Icon(Icons.logout, color: blue),
            const SizedBox(width: 15.0),
            Text(
              widget.type,
              style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 112, 111, 111)),
            )
          ],
        ));
  }
}
