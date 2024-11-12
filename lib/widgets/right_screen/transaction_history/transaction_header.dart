import 'package:flutter/widgets.dart';
import 'package:responsive_adaptive_app/utils/styles.dart';
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
          style: AppStyles.styleSemiBold18(context),
        ),
        GestureDetector(
          onTap: onToggle,
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Text(
              showAll ? S.current.see_less : S.current.see_all,
              style: AppStyles.styleMedium14(context).copyWith(
                color: const Color(0xff4eb7f2),
              ),
            ),
          ),
        ),
      ],
    );
  }
}