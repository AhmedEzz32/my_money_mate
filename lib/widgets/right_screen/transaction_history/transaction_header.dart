import 'package:flutter/widgets.dart';
import 'package:responsive_adaptive_app/utils/custom_gesture_detector_widget.dart';
import 'package:responsive_adaptive_app/utils/theme/themes.dart';
import 'package:responsive_adaptive_app/utils/translation/generated/l10n.dart';

class MyTransactionHeader extends StatelessWidget {
  final bool showAll;
  final VoidCallback onToggle;
  const MyTransactionHeader({
    super.key,
    required this.showAll,
    required this.onToggle
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          S.current.translation_history,
          style: Themes(context).theme.info4.h3Bold,
        ),
        CustomGestureDetectorWidget(
          onTap: onToggle,
          child: Text(
            showAll ? S.current.see_less : S.current.see_all,
            style: Themes(context).theme.primary.labelMedium,
          ),
        ),
      ],
    );
  }
}