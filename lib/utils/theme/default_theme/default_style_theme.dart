import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utils/theme/interface/styles.dart';
import 'package:responsive_adaptive_app/utils/theme/interface/color_interface.dart';
import 'package:responsive_adaptive_app/utils/theme/interface/text_style_interface.dart';

abstract class DefaultStyleTheme extends TextStyleInterface {
  final BuildContext context;

  DefaultStyleTheme(this.context);

  @override
  TextStyle get h3large => AppStyles.styleSemiBold24(context);
  
  @override
  TextStyle get h2Meduim => AppStyles.styleMedium20(context);

  @override
  TextStyle get h2Bold => AppStyles.styleSemiBold20(context);

  @override
  TextStyle get h3Meduim => AppStyles.styleMedium18(context);

  @override
  TextStyle get h3Bold => AppStyles.styleSemiBold18(context);

  @override
  TextStyle get h1 => AppStyles.styleBold16(context);

  @override
  TextStyle get h4Meduim => AppStyles.styleMedium16(context);

  @override
  TextStyle get h4Bold => AppStyles.styleSemiBold16(context);

  @override
  TextStyle get body1 => AppStyles.styleRegular16(context);

  @override
  TextStyle get body2Bold => AppStyles.styleSemiBold14(context);

  @override
  TextStyle get body4 => AppStyles.styleRegular14(context);

  @override
  TextStyle get body3 => AppStyles.styleRegular12(context);

  @override
  TextStyle get labelMedium => AppStyles.styleMedium14(context);
}

class BackgroundTheme extends DefaultStyleTheme {
  final ColorInterface _colorTheme;

  BackgroundTheme(BuildContext context, this._colorTheme) : super(context);

  @override
  Color get color => _colorTheme.background;
}

class SecondryTheme extends DefaultStyleTheme {
  final ColorInterface _colorTheme;

  SecondryTheme(BuildContext context, this._colorTheme) : super(context);

  @override
  Color get color => _colorTheme.secondary;
}

class PrimaryTheme extends DefaultStyleTheme {
  final ColorInterface _colorTheme;

  PrimaryTheme(BuildContext context, this._colorTheme) : super(context);

  @override
  Color get color => _colorTheme.primary;
}

class BlackTwoTheme extends DefaultStyleTheme {
  final ColorInterface _colorTheme;

  BlackTwoTheme(BuildContext context, this._colorTheme) : super(context);

  @override
  Color get color => _colorTheme.black2;
}

class BlackThreeTheme extends DefaultStyleTheme {
  final ColorInterface _colorTheme;

  BlackThreeTheme(BuildContext context, this._colorTheme) : super(context);

  @override
  Color get color => _colorTheme.darkModeP;
}

class NaturalOneTheme extends DefaultStyleTheme {
  final ColorInterface _colorTheme;

  NaturalOneTheme(BuildContext context, this._colorTheme) : super(context);

  @override
  Color get color => _colorTheme.natural1;
}

class NaturalTwoTheme extends DefaultStyleTheme {
  final ColorInterface _colorTheme;

  NaturalTwoTheme(BuildContext context, this._colorTheme) : super(context);

  @override
  Color get color => _colorTheme.natural2;
}

class NaturalThreeTheme extends DefaultStyleTheme {
  final ColorInterface _colorTheme;

  NaturalThreeTheme(BuildContext context, this._colorTheme) : super(context);

  @override
  Color get color => _colorTheme.natural3;
}

class NaturalFourTheme extends DefaultStyleTheme {
  final ColorInterface _colorTheme;

  NaturalFourTheme(BuildContext context, this._colorTheme) : super(context);

  @override
  Color get color => _colorTheme.natural4;
}

class NaturalFiveTheme extends DefaultStyleTheme {
  final ColorInterface _colorTheme;

  NaturalFiveTheme(BuildContext context, this._colorTheme) : super(context);

  @override
  Color get color => _colorTheme.natural5;
}

class NaturalSixTheme extends DefaultStyleTheme {
  final ColorInterface _colorTheme;

  NaturalSixTheme(BuildContext context, this._colorTheme) : super(context);

  @override
  Color get color => _colorTheme.natural6;
}

class WarningThreeTheme extends DefaultStyleTheme {
  final ColorInterface _colorTheme;

  WarningThreeTheme(BuildContext context, this._colorTheme) : super(context);

  @override
  Color get color => _colorTheme.warning3;
}

class ErrorThreeTheme extends DefaultStyleTheme {
  final ColorInterface _colorTheme;

  ErrorThreeTheme(BuildContext context, this._colorTheme) : super(context);

  @override
  Color get color => _colorTheme.error3;
}

class BodyTwo extends DefaultStyleTheme {
  final ColorInterface _colorTheme;

  BodyTwo(BuildContext context, this._colorTheme) : super(context);

  @override
  Color get color => _colorTheme.body2;
}

class BodyFive extends DefaultStyleTheme {
  final ColorInterface _colorTheme;

  BodyFive(BuildContext context, this._colorTheme) : super(context);

  @override
  Color get color => _colorTheme.body5;
}

class BodySix extends DefaultStyleTheme {
  final ColorInterface _colorTheme;

  BodySix(BuildContext context, this._colorTheme) : super(context);

  @override
  Color get color => _colorTheme.body6;
}

class InfoFourTheme extends DefaultStyleTheme {
  final ColorInterface _colorTheme;

  InfoFourTheme(BuildContext context, this._colorTheme) : super(context);

  @override
  Color get color => _colorTheme.info4;
}

class BodyThree extends DefaultStyleTheme {
  final ColorInterface _colorTheme;

  BodyThree(BuildContext context, this._colorTheme) : super(context);

  @override
  Color get color => _colorTheme.natural3;
}

class BodyFour extends DefaultStyleTheme {
  final ColorInterface _colorTheme;

  BodyFour(BuildContext context, this._colorTheme) : super(context);

  @override
  Color get color => _colorTheme.natural4;
}

