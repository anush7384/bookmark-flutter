import 'package:flutter/material.dart';

import '../../../utils/color_constants.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: Container(
        decoration: const BoxDecoration(),
        height: 70.0,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 40.0,
                height: 40.0,
                decoration: const BoxDecoration(
                  color: Colors.yellow,
                ),
                child: Scaffold(
                  drawer: Drawer(
                    child: ListView(
                      padding: EdgeInsets.zero,
                      children: [
                        const DrawerHeader(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                          ),
                          child: Text('Drawer Header'),
                        ),
                        ListTile(
                          title: const Text('Item 1'),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          title: const Text('Item 2'),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(),
                width: 230.0,
                height: 50.0,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(top: 10.0),
                    filled: true,
                    fillColor: const Color.fromARGB(239, 234, 229, 229),
                    hintText: 'Search...',
                    prefixIcon: const Icon(
                      Icons.search_sharp,
                      size: 20.0,
                      color: Color.fromARGB(255, 172, 172, 172),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide:
                          BorderSide(color: ColorTheme().enabledInputColor, width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                          color: ColorTheme().focusedInputColor, width: 1.0),
                    ),
                  ),
                ),
              ),
              Image.asset(
                "assets/profile_picture.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
