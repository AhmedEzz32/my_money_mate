
import 'package:flutter/material.dart' show Color;

abstract class ColorInterface {

  final bool isDark;

  ColorInterface(this.isDark);

  Color get background;
  Color get secondary;
  Color get primary;
  Color get primaryDark;
  Color get shades1;
  Color get tent1;
  Color get tent2;
  Color get darkModeP;
  Color get natural1;
  Color get natural2;
  Color get natural3;
  Color get natural4;
  Color get natural5;
  Color get natural6;
  Color get success1;
  Color get success2;
  Color get success3;
  Color get success4;
  Color get warning1;
  Color get warning2;
  Color get warning3;
  Color get warning4;
  Color get error1;
  Color get error2;
  Color get error3;
  Color get error4;
  Color get info1;
  Color get info2;
  Color get info3;
  Color get info4;
  Color get black1;
  Color get black2;
  Color get black3;
  Color get black4;
  Color get black5;
  Color get black6;
}