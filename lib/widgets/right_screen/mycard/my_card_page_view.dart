import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/widgets/right_screen/mycard/mycard.dart';

class MyCardPageView extends StatelessWidget {
  final PageController pageController;
  const MyCardPageView({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
      controller: pageController,
      itemCount: 3,
      allowImplicitScrolling: true,
      pageSnapping: true,
      scrollBehavior: CustomScrollBehavior(),
      itemBuilder: (context, index) => MyCard(),
    );
  }
}

class CustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    PointerDeviceKind.stylus,
    PointerDeviceKind.invertedStylus,
    PointerDeviceKind.trackpad,
    PointerDeviceKind.unknown,
    // etc.
  };
}
