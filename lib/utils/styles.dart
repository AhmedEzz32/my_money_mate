import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utils/size_config.dart';

abstract class AppStyles {
  static const String fontFamily = "Montserrat";

  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: getResposiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
      color: const Color(0xffAAAAAA),
    );
  }

  static TextStyle styleSemiBold12(BuildContext context) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: getResposiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w600,
      color: const Color(0xffAAAAAA),
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: getResposiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
      color: const Color(0xffAAAAAA),
    );
  }

  static TextStyle styleMedium14(BuildContext context) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: getResposiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w500,
      color: const Color(0xff064061),
    );
  }

  static TextStyle styleSemiBold14(BuildContext context) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: getResposiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w600,
      color: const Color(0xff064061),
    );
  }

  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: getResposiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
      color: const Color(0xff064061),
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: getResposiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
      color: const Color(0xff064061),
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: getResposiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w600,
      color: const Color(0xff064061),
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: getResposiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w700,
      color: const Color(0xff4eb7f2),
    );
  }

  static TextStyle styleMedium18(BuildContext context) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: getResposiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w500,
      color: const Color(0xffffffff),
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: getResposiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w600,
      color: const Color(0xff064061),
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: getResposiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w600,
      color: const Color(0xff064061),
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: getResposiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w500,
      color: const Color(0xffffffff),
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: getResposiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w600,
      color: const Color(0xff4eb7f3),
    );
  }
}

double getResposiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double resposiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .5;
  double upperLimit = fontSize * 1.0;

  return resposiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  if (width > SizeConfig.tablet) {
    return width / 550;
  } else if (width > SizeConfig.desktop) {
    return width / 1000;
  } else {
    return 1920;
  }
}
