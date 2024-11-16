import 'package:flutter/material.dart' show Color, TextStyle;

abstract class TextStyleInterface {

  Color get color;

  const TextStyleInterface();

  TextStyle get h1;
  TextStyle get h3large;
  TextStyle get h2Meduim;
  TextStyle get h2Bold;
  TextStyle get h3Meduim;
  TextStyle get h3Bold;
  TextStyle get h4Meduim;
  TextStyle get h4Bold;
  TextStyle get body1;
  TextStyle get body2Bold;
  TextStyle get body3;
  TextStyle get body4;
  TextStyle get labelMedium;
}
