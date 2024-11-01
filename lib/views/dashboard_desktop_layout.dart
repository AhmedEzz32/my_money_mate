import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_adaptive_app/widgets/middle_screen/middle_screen_page.dart';
import 'package:responsive_adaptive_app/widgets/right_screen/right_screen_page.dart';
import '../widgets/drawer/custom_drawer.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 4,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: MiddleScreenPage(),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      child: RightScreenPage(),
                    ),
                  ],
            ),
              )
            ],
          ),
        ),      ],
    );
  }
}