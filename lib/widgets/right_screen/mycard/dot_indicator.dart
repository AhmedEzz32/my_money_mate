import 'package:flutter/widgets.dart';
import 'custom_dot_indicator.dart';

class DotIndicator extends StatelessWidget {

  final int currentIndexPage;

  const DotIndicator({super.key, required this.currentIndexPage,});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:
        List.generate(
          3,
          (index) => Padding(
            padding: const EdgeInsetsDirectional.only(end: 8),
            child: CustomDotIndicator(isActive: index == currentIndexPage),
          ),
        ),
    );
  }
}