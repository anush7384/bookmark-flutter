import 'package:bookmark/screens/dashboard/widgets/top_bar.dart';
import 'package:flutter/material.dart';

class DashboardBody extends StatefulWidget {
  const DashboardBody({super.key});

  @override
  State<DashboardBody> createState() => _DashboardBodyState();
}

class _DashboardBodyState extends State<DashboardBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children:const [
        TopBar(),
        Text('hi'),
        Text('hello'),
      ],
    );
  }
}