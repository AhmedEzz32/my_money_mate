import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  
  const CustomTextField({super.key,required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppStyles.styleRegular16(context).copyWith(color: const Color(0xffaaaaaa)),
        fillColor:const Color(0xfffafafa),
        filled: true,
        border: _buildBorder(),
        enabledBorder: _buildBorder(),
        focusedBorder: _buildBorder(),
      ),
    );
  }

  OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: Color(0xfffafafa),
        )
      );
  }
}