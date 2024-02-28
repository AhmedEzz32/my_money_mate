import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/widgets/dashboard_desktop_layout.dart';
import '../widgets/adaptive_layout_widget.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (BuildContext context) => const SizedBox(),
        tabletLayout: (BuildContext context) => const SizedBox(),
        desktopLayout: (BuildContext context) => const DashBoardDesktopLayout(),
      ),
    );
  }
}
