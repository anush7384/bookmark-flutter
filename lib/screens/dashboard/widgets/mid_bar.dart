import 'package:flutter/material.dart';
import 'package:bookmark/utils/color_constants.dart';

class MidBar extends StatefulWidget {
  const MidBar({super.key});

  @override
  State<MidBar> createState() => _MidBarState();
}

class _MidBarState extends State<MidBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        height: 70.0,
        decoration: const BoxDecoration(
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(right: 10.0),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: blue,
                    width: 1.5,
                  ),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(12.0)),
              child: TextButton.icon(
                icon: Icon(Icons.add, color: blue),
                onPressed: () {},
                label: Text(
                  'Add Link',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: blue,
                  ),
                ),
              ),
            ),
            Container(
              width: 100.0,
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: blue,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0))),
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: const Icon(
                        Icons.list_alt_rounded,
                        size: 30.0,
                        color: Color.fromARGB(255, 217, 216, 216),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 217, 216, 216),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Icon(
                        Icons.add_box_outlined,
                        size: 30.0,
                        color: blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
