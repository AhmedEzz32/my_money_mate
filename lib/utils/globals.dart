import 'package:flutter/cupertino.dart';

late final GlobalKey<NavigatorState> navigatorKey;
BuildContext get cxt => navigatorKey.currentState!.context;
