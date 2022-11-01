// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../screens/login/login.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login':(context) => MyLoginPage(),
      },
      );
  }
}