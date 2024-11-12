// Flutter imports:
import 'package:flutter/foundation.dart' show ChangeNotifier, kDebugMode;
import 'package:responsive_adaptive_app/utils/debug/debugger.dart';

abstract class ServiceInterface extends ChangeNotifier {
  
  String get name;

  bool get debugPrint => true;

  void dlog(String message) {
    if (kDebugMode && debugPrint) {
      d.v(['SERVICE', name], message);
    }
  }

  Future initialize();

}
