import 'package:flutter/widgets.dart';
import 'package:responsive_adaptive_app/utils/theme/themes.dart';

class CustomDotIndicator extends StatelessWidget {
  final bool isActive;
  const CustomDotIndicator({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedContainer(
          duration: const Duration(microseconds: 300),
          height: 8,
          width: isActive ? 22 : 8,
          decoration: ShapeDecoration(
            color: isActive ? Themes(context).theme.colors.body5 : const Color(0xffe7e7e7),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )
          ),
        ),
      ],
    );
  }
}