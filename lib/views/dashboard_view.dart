import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utils/size_config.dart';
import 'package:responsive_adaptive_app/utils/theme/themes.dart';
import 'package:responsive_adaptive_app/views/dashboard_desktop_layout.dart';
import 'package:responsive_adaptive_app/views/dashboard_tablet_layout.dart';
import 'package:responsive_adaptive_app/widgets/drawer/custom_drawer.dart';
import 'adaptive_layout_widget.dart';
import 'dashboard_mobile_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: scaffoldKey,
      appBar: SizeConfig.width < SizeConfig.tablet
            ? AppBar(
              elevation: 0,
              backgroundColor: Themes(context).theme.colors.background,
              leading: IconButton(
                onPressed: () => scaffoldKey.currentState!.openDrawer(),
                icon: const Icon(
                  Icons.menu,
                ),
              ),
            )
            : null,
      drawer: SizeConfig.width < SizeConfig.tablet 
      ? CustomDrawer() 
      : null,
      backgroundColor: Themes(context).theme.colors.background,
      body: AdaptiveLayout(
        mobileLayout: (BuildContext context) =>  DashboardMobileLayout(),
        tabletLayout: (BuildContext context) =>  DashboardTabletLayout(),
        desktopLayout: (BuildContext context) =>  DashBoardDesktopLayout(),
      ),
    );
  }
}
