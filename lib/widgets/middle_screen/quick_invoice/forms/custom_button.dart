import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utils/styles.dart';

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
          backgroundColor: backgroundColor ?? const Color(0xff4db7f2),
        ),
        onPressed: (){},
        child: Text(
          text,
          style: AppStyles.styleSemiBold18(context).copyWith(color: textColor),
        ),
      ),
    );
  }
}
