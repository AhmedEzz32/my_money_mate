import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utils/theme/default_theme/default_style_theme.dart';
import 'package:responsive_adaptive_app/utils/theme/interface/theme_interface.dart';
import '../interface/color_interface.dart';
import '../interface/text_style_interface.dart';
import 'default_color_theme.dart';

class DefaultTheme extends ThemeInterface {

  DefaultTheme(super.isDark, this.context);

  final BuildContext context;

  // colors
  @override
  ColorInterface get colors => DefaultColorTheme(isDark);

  // styles
  @override
  TextStyleInterface get background => BackgroundTheme(context, colors);

  @override
  TextStyleInterface get secondry => SecondryTheme(context, colors);

  @override
  TextStyleInterface get primary => PrimaryTheme(context, colors);
  
  @override
  TextStyleInterface get black2 => BlackTwoTheme(context, colors);  
  
  @override
  TextStyleInterface get darkModeP => BlackThreeTheme(context, colors);

  @override
  TextStyleInterface get natural1 => NaturalOneTheme(context, colors);

  @override
  TextStyleInterface get natural2 => NaturalTwoTheme(context, colors);

  @override
  TextStyleInterface get natural3 => NaturalThreeTheme(context, colors);

  @override
  TextStyleInterface get natural4 => NaturalFourTheme(context, colors);

  @override
  TextStyleInterface get natural5 => NaturalFiveTheme(context, colors);

  @override
  TextStyleInterface get info4 => InfoFourTheme(context, colors);

  @override
  TextStyleInterface get natural6 => NaturalSixTheme(context, colors);

  @override
  TextStyleInterface get warning3 => WarningThreeTheme(context, colors);
  
  @override
  TextStyleInterface get error3 => ErrorThreeTheme(context, colors);

  TextStyleInterface get body2 => BodyTwo(context, colors);
  
  TextStyleInterface get body3 => BodyThree(context, colors);
  
  TextStyleInterface get body4 => BodyThree(context, colors);

}