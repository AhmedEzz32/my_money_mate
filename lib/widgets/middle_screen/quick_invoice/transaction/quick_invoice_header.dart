import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utils/theme/themes.dart';
import 'package:responsive_adaptive_app/utils/translation/generated/l10n.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          S.current.quick_invoice,
          style: Themes(context).theme.info4.h2Bold,
        ),
        const Spacer(),
        Container(
          height: 48,
          width: 48,
          decoration: ShapeDecoration(
            color: Themes(context).theme.colors.background,
            shape: const OvalBorder(),
          ),
          child: Icon(
            Icons.add,
            color: Themes(context).theme.colors.primary,
          ),
        ),
      ],
    );
  }
}
