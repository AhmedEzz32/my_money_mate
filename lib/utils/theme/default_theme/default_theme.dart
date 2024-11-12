import 'package:responsive_adaptive_app/utils/theme/default_theme/default_style_theme.dart';
import 'package:responsive_adaptive_app/utils/theme/interface/theme_interface.dart';
import '../interface/color_interface.dart';
import '../interface/text_style_interface.dart';
import 'default_color_theme.dart';

class DefaultTheme extends ThemeInterface {

  DefaultTheme(super.isDark);

  // colors
  @override
  ColorInterface get colors => DefaultColorTheme(isDark);

  // styles
  @override
  TextStyleInterface get background => BackgroundTheme(colors);

  @override
  TextStyleInterface get secondry => SecondryTheme(colors);

  @override
  TextStyleInterface get primary => PrimaryTheme(colors);
  
  @override
  TextStyleInterface get black2 => BlackTwoTheme(colors);  
  
  @override
  TextStyleInterface get darkModeP => BlackThreeTheme(colors);

  @override
  TextStyleInterface get natural1 => NaturalOneTheme(colors);

  @override
  TextStyleInterface get natural2 => NaturalTwoTheme(colors);

  @override
  TextStyleInterface get natural3 => NaturalThreeTheme(colors);

  @override
  TextStyleInterface get natural4 => NaturalFourTheme(colors);

  @override
  TextStyleInterface get natural5 => NaturalFiveTheme(colors);

  @override
  TextStyleInterface get natural6 => NaturalSixTheme(colors);

  @override
  TextStyleInterface get warning3 => WarningThreeTheme(colors);
  
  @override
  TextStyleInterface get error3 => ErrorThreeTheme(colors);
}