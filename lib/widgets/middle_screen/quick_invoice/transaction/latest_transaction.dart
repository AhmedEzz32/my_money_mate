import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utils/theme/themes.dart';
import 'package:responsive_adaptive_app/utils/translation/generated/l10n.dart';
import '../forms/quick_invoice_forms.dart';
import 'latest_transaction_list_view.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.current.latest_transactions,
          style: Themes(context).theme.info4.h4Meduim,
        ),
        const LatestTransactionListView(),
        Divider(
          height: 48,
          color: Themes(context).theme.colors.body2,
        ),
        const QuickInvoiceForms(),
      ],
    );
  }
}
