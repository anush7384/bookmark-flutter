import 'package:flutter/material.dart';
import 'package:bookmark/utils/color_constants.dart';

class BottomQuickLink extends StatefulWidget {
  const BottomQuickLink({super.key});

  @override
  State<BottomQuickLink> createState() => _BottomQuickLinkState();
}

class _BottomQuickLinkState extends State<BottomQuickLink> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Spacer(),
                    const Text(
                      'Folder',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                    Container(
                      width: 150.0,
                      height: 35.0,
                      margin: const EdgeInsets.only(top: 3.0),
                      decoration: const BoxDecoration(),
                      child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(quicklinkColor),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        child: const Text(
                          'Root',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      decoration: const BoxDecoration(),
                      width: 90.0,
                      child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            )),
                        child: Text(
                          'Save',
                          style: TextStyle(
                            color: blue,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
            Image.asset("assets/Dashboard_image.png"),
          ],
        ),
      ),
    );
  }
}
