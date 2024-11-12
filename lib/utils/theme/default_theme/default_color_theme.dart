
import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utils/theme/interface/color_interface.dart';

class DefaultColorTheme extends ColorInterface {

  DefaultColorTheme(super.isDark);

  @override
  Color get background => isDark ? const Color(0xFF000000) :const Color(0xFFFFFFFF);

  @override
  Color get secondary => isDark ?  const Color(0xFFFFFFFF) : const Color(0xFF000000);

  @override
  Color get primary => const Color(0xFF2E5EA9);

  @override
  Color get primaryDark => const Color(0xFF21274D);

  @override
  Color get shades1 => const Color(0xFF254B87);

  @override
  Color get tent1 => const Color(0xFF819ECB);

  @override
  Color get tent2 => const Color(0xFFC0CFE5);

  @override
  Color get darkModeP => const Color(0xFF3E89FF);

  @override
  Color get natural1 => const Color(0xFFF7F7F7);

  @override
  Color get natural2 => const Color(0xFFD5D5D5);

  @override
  Color get natural3 => const Color(0xFFB2B2B2);

  @override
  Color get natural4 => const Color(0xFF909090);

  @override
  Color get natural5 => const Color(0xFF6F6F6F);

  @override
  Color get natural6 => const Color(0xFF4D4D4D);

  @override
  Color get success1 => const Color(0xFF34D399);

  @override
  Color get success2 => const Color(0xFF10B981);

  @override
  Color get success3 => const Color(0xFF059669);

  @override
  Color get success4 => const Color(0xFF047857);

  @override
  Color get warning1 => const Color(0xFFFCD34D);

  @override
  Color get warning2 => const Color(0xFFFBBF24);

  @override
  Color get warning3 => const Color(0xFFF59E0B);

  @override
  Color get warning4 => const Color(0xFFD97706);

  @override
  Color get error1 => const Color(0xFFF87171);

  @override
  Color get error2 => const Color(0xFFEF4444);

  @override
  Color get error3 => const Color(0xFFDC2626);

  @override
  Color get error4 => const Color(0xFFB91C1C);

  @override
  Color get info1 => const Color(0xFF497BC6);

  @override
  Color get info2 => const Color(0xFF2F5DA4);

  @override
  Color get info3 => const Color(0xFF1A4382);

  @override
  Color get info4 => const Color(0xFF0B2D60);

  @override
  Color get black1 => const Color(0xFF111111);

  @override
  Color get black2 => const Color(0xFF101010);

  @override
  Color get black3 => const Color(0xFF121212);

  @override
  Color get black4 => const Color(0xFF191919);

  @override
  Color get black5 => const Color(0xFF202020);

  @override
  Color get black6 => const Color(0xFF2F2F2F);
}