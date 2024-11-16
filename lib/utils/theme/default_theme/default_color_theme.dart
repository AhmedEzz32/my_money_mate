import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utils/theme/interface/color_interface.dart';

class DefaultColorTheme extends ColorInterface {
  DefaultColorTheme(super.isDark);

  @override
  Color get background => isDark ? const Color(0xFF121212) : const Color(0xFFFFFFFF);

  @override
  Color get secondary => isDark ? const Color(0xFFD1D5DA) : const Color(0xFF292D32);

  @override
  Color get primary => const Color(0xFF4EB7F2);

  @override
  Color get primaryDark => const Color(0xFF007ACC);

  @override
  Color get shades1 => const Color(0xFF2D79C7);

  @override
  Color get tent1 => const Color(0xFF98DAFF);

  @override
  Color get tent2 => const Color(0xFF3E8EC1);

  @override
  Color get darkModeP => const Color(0xFF2E96D8);

  @override
  Color get natural1 => isDark ? const Color(0xFF1A1B1C) : const Color(0xFFF7F9FA);

  @override
  Color get natural2 => isDark ? const Color(0xFF2C2C2C) : const Color(0xFFE8E8E8);

  @override
  Color get natural3 => isDark ? const Color(0xFF333333) : const Color(0xFFAAAAAA);

  @override
  Color get natural4 => isDark ? const Color(0xFF444444) : const Color(0xFF909090);

  @override
  Color get natural5 => isDark ? const Color(0xFF555555) : const Color(0xFF6F6F6F);

  @override
  Color get natural6 => isDark ? const Color(0xFF666666) : const Color(0xFF4D4D4D);

  @override
  Color get success1 => const Color(0xFF4CAF50);

  @override
  Color get success2 => const Color(0xFF34D399);

  @override
  Color get success3 => const Color(0xFF10B981);

  @override
  Color get success4 => const Color(0xFF059669);

  @override
  Color get warning1 => const Color(0xFFF59E0B);

  @override
  Color get warning2 => const Color(0xFFFBBF24);

  @override
  Color get warning3 => const Color(0xFFFCD34D);

  @override
  Color get warning4 => const Color(0xFFD97706);

  @override
  Color get error1 => const Color(0xFFEF4444);

  @override
  Color get error2 => const Color(0xFFF87171);

  @override
  Color get error3 => const Color(0xFFDC2626);

  @override
  Color get error4 => const Color(0xFFB91C1C);

  @override
  Color get info1 => const Color(0xFF208CC8);

  @override
  Color get info2 => const Color(0xFF45AFEA);

  @override
  Color get info3 => const Color(0xFF2E96D8);

  @override
  Color get info4 => const Color(0xFF064061);

  @override
  Color get black1 => const Color(0xFF1A1A1A);

  @override
  Color get black2 => const Color(0xFF2A2A2A);

  @override
  Color get black3 => const Color(0xFF333333);

  @override
  Color get black4 => const Color(0xFF3C3C3C);

  @override
  Color get black5 => const Color(0xFF444444);

  @override
  Color get black6 => const Color(0xFF4D4D4D);
  
  @override
  Color get body2 => const Color(0xfff1f1f1);
  
  @override
  Color get body5 => const Color(0xff4db7f2);
  
  @override
  Color get body6 => const Color(0xFFE2DECD);
}
