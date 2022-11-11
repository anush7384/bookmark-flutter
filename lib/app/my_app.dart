import 'package:bookmark/screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';

import 'package:bookmark/screens/signup/signup_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // initialRoute: '/dashboard',
      initialRoute: '/',
      routes: {
        '/': (context) => const SignupPage(),
        '/dashboard': (context) => const DashboardPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
