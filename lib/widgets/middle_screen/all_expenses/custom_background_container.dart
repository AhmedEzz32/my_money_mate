import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utils/theme/themes.dart';

class CustomBackgroundContainer extends StatelessWidget {

  final Widget child;
  final double? padding;

  const CustomBackgroundContainer({
    super.key,
    required this.child,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.all(padding ?? 20),
      decoration: ShapeDecoration(
        color: Themes(context).theme.colors.background,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      )),
      child: child,
    );
  }
}
