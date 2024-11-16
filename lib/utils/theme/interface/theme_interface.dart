
import 'package:responsive_adaptive_app/utils/theme/interface/color_interface.dart';
import 'package:responsive_adaptive_app/utils/theme/interface/text_style_interface.dart';

abstract class ThemeInterface {
  
  final bool isDark;

  ThemeInterface(this.isDark);

  ColorInterface get colors;

  TextStyleInterface get background;
  TextStyleInterface get secondry;
  TextStyleInterface get primary;
  TextStyleInterface get black2;
  TextStyleInterface get darkModeP;
  TextStyleInterface get info4;
  TextStyleInterface get natural1;
  TextStyleInterface get natural2;
  TextStyleInterface get natural3;
  TextStyleInterface get natural4;
  TextStyleInterface get natural5;
  TextStyleInterface get natural6;
  TextStyleInterface get warning3;
  TextStyleInterface get error3;
}