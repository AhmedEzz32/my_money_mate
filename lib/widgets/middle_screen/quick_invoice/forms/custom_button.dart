import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utils/theme/themes.dart';

class CustomButton extends StatelessWidget { 
  final Color? backgroundColor;
  final Color? textColor;
  final String text;


  const CustomButton({
    super.key, 
    this.backgroundColor,
    this.textColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
          backgroundColor: backgroundColor ?? Themes(context).theme.colors.body5,
        ),
        onPressed: (){},
        child: Text(
          text,
          style: Themes(context).theme.background.h3Bold.copyWith(color: textColor),
        ),
      ),
    );
  }
}
