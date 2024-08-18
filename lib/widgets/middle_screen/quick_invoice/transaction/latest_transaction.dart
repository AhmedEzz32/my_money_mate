import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utils/styles.dart';
import '../forms/quick_invoice_forms.dart';
import 'latest_transaction_list_view.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16,
        ),
        LatestTransactionListView(),
        Divider(
          height: 48,
          color: Color(0xffF1F1F1),
        ),
        QuickInvoiceForms(),
      ],
    );
  }
}
