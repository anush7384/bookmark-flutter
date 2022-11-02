import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        height: 50.0,
        width:300.0,
        color: Colors.blue,
        child: Center(
          child: Row(children: [
            Scaffold(
              body: Drawer(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    const DrawerHeader(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: Text('Header'),
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
            Container(
              width: 100.0,
              height: 25.0,
              child: const TextField(),
            ),
            Container(
              width: 20.0,
              height: 20.0,
              decoration: const BoxDecoration(
                color: Colors.yellow,
              ),
            )
          ]),
        ),
      ),
    );
  }
}
