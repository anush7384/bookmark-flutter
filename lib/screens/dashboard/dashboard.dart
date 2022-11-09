import 'package:bookmark/screens/dashboard/widgets/dashboard_body.dart';
import 'package:bookmark/screens/dashboard/widgets/drawer_button.dart';
import 'package:bookmark/screens/dashboard/widgets/folder_card.dart';
import 'package:bookmark/screens/dashboard/widgets/profile_card.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final GlobalKey<ScaffoldState> _scaffoldKEy = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKEy,
      drawer: SafeArea(
        child: Container(
          width: 200.0,
          // height: 400.0,
          decoration: const BoxDecoration(),
          child: Drawer(
            // child: ListView(
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
                          padding: const EdgeInsets.all(0),
                          onPressed: () {
                            _scaffoldKEy.currentState?.closeDrawer();
                          },
                          icon: const Icon(Icons.arrow_back_outlined,
                              size: 30.0)),
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
                const DrawerButton(type: 'Favourites', icon: Icons.favorite),
                const DrawerButton(type: 'Logout', icon: Icons.logout),
              ],
            ),
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(children: [
          const DashboardBody(),
          Positioned(
            left: -2.0,
            top: 6.0,
            child: IconButton(
              onPressed: () {
                _scaffoldKEy.currentState?.openDrawer();
              },
              icon: const Icon(
                Icons.menu_rounded,
                size: 40.0,
                color: Color.fromARGB(255, 113, 111, 111),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
