import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utils/theme/themes.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  
  const CustomTextField({super.key,required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: Themes(context).theme.natural3.body1,
        fillColor: Themes(context).theme.colors.background,
        filled: true,
        border: _buildBorder(context),
        enabledBorder: _buildBorder(context),
        focusedBorder: _buildBorder(context),
      ),
    );
  }

  OutlineInputBorder _buildBorder(BuildContext context) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: Themes(context).theme.colors.background,
        )
      );
  }
}