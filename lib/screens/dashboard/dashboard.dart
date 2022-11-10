import 'package:bookmark/screens/dashboard/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

import '../dashboard/widgets/dashboard_body.dart';

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
      drawer: CustomDrawer(
        scaffoldKey: _scaffoldKEy,
      ),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
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
          ],
        ),
      ),
    );
  }
}
