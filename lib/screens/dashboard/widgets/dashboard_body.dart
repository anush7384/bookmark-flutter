import 'package:bookmark/screens/dashboard/widgets/empty_bookmark.dart';
import 'package:bookmark/screens/dashboard/widgets/mid_bar.dart';
import 'package:bookmark/screens/dashboard/widgets/quick_link.dart';
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
      children: const [
        TopBar(),
        Padding(
          padding: EdgeInsets.all(0.0),
          child: QuickLink(),
        ),
        MidBar(),
        EmptyBookmark(),
      ],
    );
  }
}