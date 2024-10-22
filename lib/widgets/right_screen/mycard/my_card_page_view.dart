import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_adaptive_app/widgets/right_screen/mycard/mycard.dart';

class MyCardPageView extends StatelessWidget {
  final PageController pageController;
  const MyCardPageView({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      children: List.generate(
        3,
        (index) => const MyCard(),
      ),
    );
  }
}