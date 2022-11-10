import 'package:flutter/material.dart';

import '../../../screens/dashboard/widgets/empty_bookmark.dart';
import '../../../screens/dashboard/widgets/mid_bar.dart';
import '../../../screens/dashboard/widgets/quick_link.dart';
import '../../../screens/dashboard/widgets/top_bar.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        TopBar(),
        QuickLink(),
        MidBar(),
        EmptyBookmark(),
      ],
    );
  }
}
