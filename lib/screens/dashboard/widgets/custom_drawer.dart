import 'package:flutter/material.dart';

import '../widgets/profile_card.dart';
import '../widgets/folder_card.dart';
import '../widgets/drawer_button.dart';

class CustomDrawer extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey ;

  const CustomDrawer({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          width: 200.0,
          decoration: const BoxDecoration(),
          child: Drawer(
            child: Column(
              children: [
                Container(
                  width: 200.0,
                  padding: const EdgeInsets.only(right: 10.0),
                  decoration: const BoxDecoration(),
                  child: Row(
                    children: [
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          scaffoldKey.currentState?.closeDrawer();
                        },
                        icon: const Icon(Icons.arrow_back_outlined, size: 30.0),
                      ),
                    ],
                  ),
                ),
                const ProfileCard(),
                SizedBox(
                  height: 230.0,
                  width: 200.0,
                  child: ListView(children: const [
                    FolderCard(),
                    FolderCard(),
                    FolderCard(),
                    FolderCard(),
                    FolderCard(),
                    FolderCard(),
                    FolderCard(),
                    FolderCard(),
                  ]),
                ),
                const DrawerButton(
                  type: 'Favourites',
                  icon: Icons.favorite,
                ),
                const DrawerButton(
                  type: 'Logout',
                  icon: Icons.logout,
                ),
              ],
            ),
          ),
        ),
      );
  }
}