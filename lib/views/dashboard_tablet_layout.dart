import 'package:flutter/widgets.dart';
import 'package:responsive_adaptive_app/widgets/drawer/custom_drawer.dart';
import 'dashboard_mobile_layout.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 3,
          child: DashboardMobileLayout(),
        ),
        SizedBox(
          width: 24,
        ),
      ],
    );
  }
}