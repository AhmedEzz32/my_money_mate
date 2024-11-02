import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/widgets/middle_screen/middle_screen_page.dart';
import '../widgets/right_screen/right_screen_page.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          MiddleScreenPage(verticalPadding: 0,),
          SizedBox(
            height: 24,
          ),
          RightScreenPage(),
          SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
