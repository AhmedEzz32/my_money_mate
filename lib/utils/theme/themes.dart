import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_adaptive_app/utils/services/storage_service.dart';
import 'package:responsive_adaptive_app/utils/theme/default_theme/default_theme.dart';
import 'package:responsive_adaptive_app/utils/theme/interface/theme_interface.dart';

class Themes extends ChangeNotifier {

  late ThemeInterface _theme;
  late ThemeMode _mode;
  static const String kThemeColorPrefKey = 'theme_color';

  ThemeInterface get theme => _theme;

  bool get isDark => _mode == ThemeMode.dark;

  void initialize() {
    _setMode();
    _theme = DefaultTheme(isDark);
    
    setSystemSatusDefaultColor();
  }

  void _setMode() {
    int value = StorageService().getInt(kThemeColorPrefKey) ?? 0;
    _mode = value < ThemeMode.values.length ? ThemeMode.values[value] : ThemeMode.system;
  }

  ThemeMode get mode => _mode;
  set mode(ThemeMode mode) {
    _mode = mode;
    StorageService().saveInt(kThemeColorPrefKey, mode.index);
    _theme = DefaultTheme(isDark);
    notifyListeners();
  }
  void setNextMode() {
    mode = ThemeMode.values[(mode.index + 1) % ThemeMode.values.length];
  }

  SystemUiOverlayStyle get systemSatusDefaultColor {
    bool isDark = this.isDark;
    return SystemUiOverlayStyle(
      statusBarColor: _theme.colors.background,
      statusBarBrightness: isDark ? Brightness.dark : Brightness.light,
      statusBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
      systemStatusBarContrastEnforced: true,

      systemNavigationBarColor: _theme.colors.background,
      systemNavigationBarDividerColor: isDark ? _theme.colors.background : _theme.colors.secondary,
      systemNavigationBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
      systemNavigationBarContrastEnforced: true,
    );
  }

  ThemeData get appTheme {
    // final textTheme = appTextTheme;
    return ThemeData(
      // main colors
      primaryColor: _theme.colors.primary,
      primaryColorLight: _theme.colors.primary,
      primaryColorDark: _theme.colors.primaryDark,
      disabledColor: _theme.colors.natural5,
      splashColor: _theme.colors.natural1,

      // use flutter new material design
      useMaterial3: true,

      // ripple effect color
      // cardview theme
      cardTheme: CardTheme(
        color: _theme.colors.background,
        shadowColor: _theme.colors.natural3,
        elevation: 4,
      ),
      // app bar theme
      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: _theme.colors.primary,
        elevation: 4,
        shadowColor: _theme.colors.primary,
        // titleTextStyle: _theme.background.titleMedium,
      ),
      // button theme
      buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        disabledColor: _theme.colors.natural5,
        buttonColor: _theme.colors.primary,
        splashColor: _theme.colors.primary,
      ),

      // elevated button them
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: _theme.background.body2Meduim,
          elevation: 4.0,
          shadowColor: _theme.colors.primary,
          backgroundColor: _theme.colors.primary,
          surfaceTintColor: _theme.colors.primary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        ),
      ),

      // text styles
      // textTheme: textTheme,

      // date time picker theme
      datePickerTheme: DatePickerThemeData(
        backgroundColor: _theme.colors.background,
        todayBackgroundColor: _datePickerBackgroundColor,
        todayForegroundColor: _datePickerForegroundColor,
        dayBackgroundColor: _datePickerBackgroundColor,
        dayForegroundColor: _datePickerForegroundColor,
        cancelButtonStyle: ButtonStyle(
          foregroundColor: WidgetStateProperty.all(_theme.colors.primary),
        ),
        confirmButtonStyle: ButtonStyle(
          foregroundColor: WidgetStateProperty.all(_theme.colors.primary),
        ),
        dayStyle: Themes().theme.background.body3,
        yearStyle: Themes().theme.background.body3,
        weekdayStyle: Themes().theme.background.body3,
      ),

      timePickerTheme: TimePickerThemeData(
        backgroundColor: _theme.colors.background,
        cancelButtonStyle: ButtonStyle(
          foregroundColor: WidgetStateProperty.all(_theme.colors.primary),
        ),
        confirmButtonStyle: ButtonStyle(
          foregroundColor: WidgetStateProperty.all(_theme.colors.primary),
        ),
        dialHandColor: _theme.colors.primary,
        // hourMinuteColor: color.color13,
        // dialBackgroundColor: color.color13,
        hourMinuteColor: WidgetStateColor.resolveWith((states) => states.contains(WidgetState.selected) ? _theme.colors.primary.withAlpha(50) : Colors.transparent),
        hourMinuteTextColor: _theme.colors.secondary,
        dayPeriodColor: WidgetStateColor.resolveWith((states) => states.contains(WidgetState.selected) ? _theme.colors.primary.withAlpha(50) : Colors.transparent),
      ),

      // input decoration theme (text form field)
      inputDecorationTheme: InputDecorationTheme(
        // filled color
        // fillColor: _theme.colors.background,
        // suffixIconColor: _theme.colors.background,
        // filled: true,

        // focusColor: _theme.colors.natural1,
        // content padding
        contentPadding: const EdgeInsets.all(16.0),

        // hint style
        labelStyle: _theme.background.labelMedium,
        hintStyle: _theme.natural2.body3,
        errorStyle: _theme.error3.label,
        errorMaxLines: 1,

        // form fileds style
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: _theme.colors.natural3, width: 1.0),
          borderRadius: const BorderRadius.all(Radius.circular(18.0)),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: _theme.colors.natural5, width: 1.0),
          borderRadius: const BorderRadius.all(Radius.circular(18.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: _theme.colors.darkModeP, width: 1.0),
          borderRadius: const BorderRadius.all(Radius.circular(18.0)),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: _theme.colors.error3, width: 1.0),
          borderRadius: const BorderRadius.all(Radius.circular(18.0)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: _theme.colors.error4, width: 1.0),
          borderRadius: const BorderRadius.all(Radius.circular(18.0)),
        ),
      ),

      // bottom navigation bar theme
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: _theme.colors.background,
        selectedItemColor: _theme.colors.primary,
        unselectedItemColor: _theme.colors.natural4,
        selectedLabelStyle: _theme.primary.body3,
        unselectedLabelStyle: _theme.natural2.body3,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
      ),

      cupertinoOverrideTheme: CupertinoThemeData(
        primaryColor: _theme.colors.primary,
        primaryContrastingColor: _theme.colors.primaryDark,
        barBackgroundColor: _theme.colors.background,
        scaffoldBackgroundColor: _theme.colors.background,
        textTheme: CupertinoTextThemeData(
          primaryColor: _theme.colors.primary,
          dateTimePickerTextStyle: Themes().theme.secondry.body3,
        ),
      )
    );
  }

  // TextTheme get appTextTheme {
  //   return TextTheme(
  //     displayLarge:   _theme.background.displayLarge,
  //     displayMedium:  _theme.background.displayMedium,
  //     displaySmall:   _theme.background.displaySmall,
  //     headlineLarge:  _theme.background.headlineLarge,
  //     headlineMedium: _theme.background.headlineMedium,
  //     headlineSmall:  _theme.background.headlineSmall,
  //     titleLarge:     _theme.background.titleLarge,
  //     titleMedium:    _theme.background.titleMedium,
  //     titleSmall:     _theme.background.titleSmall,
  //     bodyLarge:      _theme.background.bodyLarge,
  //     bodyMedium:     _theme.background.bodyMedium,
  //     bodySmall:      _theme.background.bodySmall,
  //     labelLarge:     _theme.background.labelLarge,
  //     labelMedium:    _theme.background.labelMedium,
  //     labelSmall:     _theme.background.labelSmall,
  //   );
  // }

  void setSystemSatusDefaultColor() {
    SystemChrome.setSystemUIOverlayStyle(systemSatusDefaultColor);
  }

  WidgetStateProperty<Color?>? get _datePickerBackgroundColor => WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.selected)) {
      return _theme.colors.primary;
    }
    return Colors.transparent;
  });
    
  WidgetStateProperty<Color?>? get _datePickerForegroundColor => WidgetStateProperty.resolveWith<Color?>((states) {
    if (states.contains(WidgetState.selected)) {
      return Colors.black;
    }
    if (states.contains(WidgetState.disabled)) {
      return _theme.colors.natural5;
    }
    return _theme.colors.secondary;
  });

  Themes.init();
  static Themes? _instance;
  factory Themes() => _instance ??= Themes.init();
}