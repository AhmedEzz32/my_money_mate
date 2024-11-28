import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utils/globals.dart';
import 'package:responsive_adaptive_app/utils/services/settings_service.dart';
import 'package:responsive_adaptive_app/utils/services/storage_service.dart';
import 'package:responsive_adaptive_app/utils/translation/generated/l10n.dart';
import 'utils/theme/themes.dart';
import 'views/dashboard_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await StorageService().initialize();
  await SettingService().initialize();
  navigatorKey = GlobalKey<NavigatorState>();
  runApp(ResponsiveDashBoard());
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    Themes(context);
    return AnimatedBuilder(
      animation: Listenable.merge([SettingService(), Themes(context)]),
      builder: (context, _) {
        return MaterialApp(
          navigatorKey: navigatorKey,
          theme: Themes(context).appTheme,
          darkTheme: Themes(context).appTheme,
          themeMode: Themes(context).mode,
          locale: SettingService().language.locale,
          localizationsDelegates: const [
            S.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          debugShowCheckedModeBanner: false,
          home: DashBoardView(),
        );
      }
    );
  }
}
