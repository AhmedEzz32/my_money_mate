import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utils/theme/interface/color_interface.dart';
import 'package:responsive_adaptive_app/utils/theme/interface/text_style_interface.dart';

abstract class DefaultStyleTheme extends TextStyleInterface {

  static const String fontName = 'inter';

  const DefaultStyleTheme();

  @override
  TextStyle get h1 => TextStyle(
    fontFamily: fontName, 
    color: color, 
    fontSize: 28.0, 
    height: 0.0,
    letterSpacing: 0.0, 
    fontWeight: FontWeight.bold,
  );

  @override
  TextStyle get h2Meduim => TextStyle(
    fontFamily: fontName, 
    color: color, 
    fontSize: 24.0, 
    height: 0.0,
    letterSpacing: 0.0, 
    fontWeight: FontWeight.w500,
  );

  @override
  TextStyle get h2Bold => TextStyle(
    fontFamily: fontName, 
    color: color, 
    fontSize: 24.0, 
    height: 0.0,
    letterSpacing: 0.0, 
    fontWeight: FontWeight.bold,
  );

  @override
  TextStyle get h3Meduim => TextStyle(
    fontFamily: fontName, 
    color: color, 
    fontSize: 20.0, 
    height: 0.0,
    letterSpacing: 0.0, 
    fontWeight: FontWeight.w500,
  );

  @override
  TextStyle get h3Bold => TextStyle(
    fontFamily: fontName,
    color: color,
    fontSize: 20.0,
    height: 0.0,
    letterSpacing: 0.0,
    fontWeight: FontWeight.bold,
  );

  @override
  TextStyle get h4Meduim => TextStyle(
    fontFamily: fontName, 
    color: color, 
    fontSize: 18.0, 
    height: 0.0,
    letterSpacing: 0.0, 
    fontWeight: FontWeight.w500,
  );

  @override
  TextStyle get h4Bold => TextStyle(
    fontFamily: fontName, 
    color: color, 
    fontSize: 18.0, 
    height: 0.0,
    letterSpacing: 0.0, 
    fontWeight: FontWeight.bold,
  );

  @override
  TextStyle get body1 => TextStyle(
    fontFamily: fontName, 
    color: color, 
    fontSize: 16.0, 
    height: 0.0,
    letterSpacing: 0.0, 
    fontWeight: FontWeight.w500,
  );

  @override
  TextStyle get body2Meduim => TextStyle(
    fontFamily: fontName, 
    color: color, 
    fontSize: 14.0, 
    height: 0.0,
    letterSpacing: 0.0, 
    fontWeight: FontWeight.w500,
  );

  @override
  TextStyle get body2Bold => TextStyle(
    fontFamily: fontName,
    color: color,
    fontSize: 14.0,
    height: 0.0,
    letterSpacing: 0.0,
    fontWeight: FontWeight.bold,
  );

  @override
  TextStyle get body3 => TextStyle(
    fontFamily: fontName,
    color: color, 
    fontSize: 12.0, 
    height: 0.0,
    letterSpacing: 0.0, 
    fontWeight: FontWeight.w500,
  );
  
  @override
  TextStyle get label => TextStyle(
    fontFamily: fontName, 
    color: color, 
    fontSize: 10.0, 
    height: 0.0,
    letterSpacing: 0.0, 
    fontWeight: FontWeight.w500,
  );

  @override
  TextStyle get label2 => TextStyle(
    fontFamily: fontName, 
    color: color, 
    fontSize: 8.0, 
    height: 0.0,
    letterSpacing: 0.0, 
    fontWeight: FontWeight.w500,
  );

  @override
  TextStyle get labelMedium => TextStyle(
    fontFamily: fontName, 
    color: color, 
    fontSize: 12.0, 
    height: 0.0, 
    letterSpacing: 0.5, 
    fontWeight: FontWeight.w500,
  );

  @override
  TextStyle get labelSmall => TextStyle(
    fontFamily: fontName, 
    color: color, 
    fontSize: 11.0, 
    height: 0.0, 
    letterSpacing: 0.5, 
    fontWeight: FontWeight.w500,
  );
}

class BackgroundTheme extends DefaultStyleTheme {

  final ColorInterface _colorTheme;

  const BackgroundTheme(this._colorTheme);

  @override
  Color get color => _colorTheme.background;
}

class SecondryTheme extends DefaultStyleTheme {

  final ColorInterface _colorTheme;

  const SecondryTheme(this._colorTheme);

  @override
  Color get color => _colorTheme.secondary;
}

class PrimaryTheme extends DefaultStyleTheme {

  final ColorInterface _colorTheme;

  const PrimaryTheme(this._colorTheme);

  @override
  Color get color => _colorTheme.primary;
}

class BlackTwoTheme extends DefaultStyleTheme {

  final ColorInterface _colorTheme;

  const BlackTwoTheme(this._colorTheme);

  @override
  Color get color => _colorTheme.black2;
}

class BlackThreeTheme extends DefaultStyleTheme {

  final ColorInterface _colorTheme;

  const BlackThreeTheme(this._colorTheme);

  @override
  Color get color => _colorTheme.darkModeP;
}

class NaturalOneTheme extends DefaultStyleTheme {

  final ColorInterface _colorTheme;

  const NaturalOneTheme(this._colorTheme);

  @override
  Color get color => _colorTheme.natural1;
}

class NaturalTwoTheme extends DefaultStyleTheme {

  final ColorInterface _colorTheme;

  const NaturalTwoTheme(this._colorTheme);

  @override
  Color get color => _colorTheme.natural2;
}

class NaturalThreeTheme extends DefaultStyleTheme {

  final ColorInterface _colorTheme;

  const NaturalThreeTheme(this._colorTheme);

  @override
  Color get color => _colorTheme.natural3;
}

class NaturalFourTheme extends DefaultStyleTheme {

  final ColorInterface _colorTheme;

  const NaturalFourTheme(this._colorTheme);

  @override
  Color get color => _colorTheme.natural4;
}

class NaturalFiveTheme extends DefaultStyleTheme {

  final ColorInterface _colorTheme;

  const NaturalFiveTheme(this._colorTheme);

  @override
  Color get color => _colorTheme.natural5;
}

class NaturalSixTheme extends DefaultStyleTheme {

  final ColorInterface _colorTheme;

  const NaturalSixTheme(this._colorTheme);

  @override
  Color get color => _colorTheme.natural6;
}
class WarningThreeTheme extends DefaultStyleTheme {

  final ColorInterface _colorTheme;

  const WarningThreeTheme(this._colorTheme);

  @override
  Color get color => _colorTheme.warning3;
}

class ErrorThreeTheme extends DefaultStyleTheme {

  final ColorInterface _colorTheme;

  const ErrorThreeTheme(this._colorTheme);

  @override
  Color get color => _colorTheme.error3;
}