// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:logger/logger.dart';

final DebugLog d = DebugLog();
final TraceLog t = TraceLog();
final LogColor c = LogColor();
final dynamic  g = LogColor();


class DebugLog {

  DebugLog();

  void v(dynamic category, [dynamic message, dynamic error, StackTrace? stackTrace])
        => logger.t(_constructLogMessage(category, message), error: error, stackTrace: stackTrace);
  void i(dynamic category, [dynamic message, dynamic error, StackTrace? stackTrace])
        => logger.i(_constructLogMessage(category, message), error: error, stackTrace: stackTrace);
  void e(dynamic category, [dynamic message, dynamic error, StackTrace? stackTrace])
        => logger.e(_constructLogMessage(category, message), error: error, stackTrace: stackTrace);
  void d(dynamic category, [dynamic message, dynamic error, StackTrace? stackTrace])
        => logger.d(_constructLogMessage(category, message), error: error, stackTrace: stackTrace);
  void w(dynamic category, [dynamic message, dynamic error, StackTrace? stackTrace])
        => logger.w(_constructLogMessage(category, message), error: error, stackTrace: stackTrace);
  void f(dynamic category, [dynamic message, dynamic error, StackTrace? stackTrace])
        => logger.f(_constructLogMessage(category, message), error: error, stackTrace: stackTrace);

  void log(Level level,dynamic message, [dynamic error, StackTrace? stackTrace])
                => logger.log(level, message, error: error, stackTrace: stackTrace);


  final Logger logger = Logger(
    printer: SimplePrinter(),
  );

}

class TraceLog {

  TraceLog();

  void v(dynamic category, [dynamic message, dynamic error, StackTrace? stackTrace])
        => logger.t(_constructLogMessage(category, message), error: error, stackTrace: stackTrace);
  void i(dynamic category, [dynamic message, dynamic error, StackTrace? stackTrace])
        => logger.i(_constructLogMessage(category, message), error: error, stackTrace: stackTrace);
  void e(dynamic category, [dynamic message, dynamic error, StackTrace? stackTrace])
        => logger.e(_constructLogMessage(category, message), error: error, stackTrace: stackTrace);
  void d(dynamic category, [dynamic message, dynamic error, StackTrace? stackTrace])
        => logger.d(_constructLogMessage(category, message), error: error, stackTrace: stackTrace);
  void w(dynamic category, [dynamic message, dynamic error, StackTrace? stackTrace])
        => logger.w(_constructLogMessage(category, message), error: error, stackTrace: stackTrace);
  void f(dynamic category, [dynamic message, dynamic error, StackTrace? stackTrace])
        => logger.f(_constructLogMessage(category, message), error: error, stackTrace: stackTrace);

  void log(Level level, dynamic message, [dynamic error, StackTrace? stackTrace])
                => logger.log(level, message, error: error, stackTrace: stackTrace);


  final Logger logger = Logger(
    printer: PrettyPrinter(
      methodCount: 4,
      lineLength: 120,
    ),
  );

}

String _constructLogMessage(dynamic category, dynamic message) {
  String msg = '';
  if (category != null && message == null) {
    return _stringfy(category, '  ');
  }
  if (category == null && message != null) {
    return _stringfy(message, '  ');
  }

  if (category != null && message != null) {
    if (category is Iterable) {
      for (var item in category) {
        String m = _stringfy(item);
        if (m.isNotEmpty) {
          msg += '[$m] ';
        }
      }
      return msg + _stringfy(message);
    } else {
      msg += '[${_stringfy(category)}] ${_stringfy(message)}';
    }
  }

  return msg;
}

String _stringfy(dynamic value, [String? indent]) {
  if (value == null) {
    return 'null';
  }
  if (value is String) {
    return value;
  }
  if (value is Function) {
    return _stringfy(value());
  }
  if (value is Enum) {
    return value.toString().split('.')[1];
  }
  if (value is Map || value is Iterable) {
    var encoder = JsonEncoder.withIndent(indent, _toEncodableFallback);
    return encoder.convert(value);
  }
  return value.toString();
}

// Handles any object that is causing JsonEncoder() problems
Object _toEncodableFallback(dynamic object) {
  try {
    return object.toJson();
  } catch (e) {
    // ignore
  }
  try {
    return object.toString();
  } catch (e) {
    // ignore
  }
  return object.runtimeType.toString();
}


class LogColor {

  AnsiColor color(Level level) {
    return levelColors[level]!;
  }

  AnsiColor get v => levelColors[Level.trace]!;
  AnsiColor get i => levelColors[Level.info]!;
  AnsiColor get e => levelColors[Level.error]!;
  AnsiColor get d => levelColors[Level.debug]!;
  AnsiColor get w => levelColors[Level.warning]!;
  AnsiColor get f => levelColors[Level.fatal]!;

  AnsiColor log(Level level) => levelColors[level]!;

  AnsiColor get white   => const AnsiColor.none();
  AnsiColor get grey    => const AnsiColor.fg(180);
  AnsiColor get red     => const AnsiColor.fg(196);
  AnsiColor get green   => const AnsiColor.fg(46);
  AnsiColor get yellow  => const AnsiColor.fg(226);
  AnsiColor get blue    => const AnsiColor.fg(21);
  AnsiColor get purple  => const AnsiColor.fg(129);
  AnsiColor get cyan    => const AnsiColor.fg(51);
  AnsiColor get none    => const AnsiColor.none();



  static final levelColors = {
    Level.trace:    AnsiColor.fg(AnsiColor.grey(0.5)),
    Level.debug:    const AnsiColor.none(),
    Level.info:     const AnsiColor.fg(12),
    Level.warning:  const AnsiColor.fg(208),
    Level.error:    const AnsiColor.fg(196),
    Level.fatal:    const AnsiColor.fg(199),
    Level.off:      const AnsiColor.none(),
  };

}
