import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utils/translation/generated/l10n.dart';
import 'package:responsive_adaptive_app/widgets/right_screen/transaction_history/transaction_item.dart';
import 'package:responsive_adaptive_app/widgets/right_screen/transaction_history/transaction_model.dart';

class TransactionHistoryListView extends StatelessWidget {
  final bool showAll;
  const TransactionHistoryListView({super.key, required this.showAll});

  static List<TransactionModel> items = [
    TransactionModel(
      title: S.current.cash_withdrawal,
      date: '22th oct 2024\nat 12:00 AM',
      amount: r'$20,129',
      isWithDrawal: true,
    ),
    TransactionModel(
      title: S.current.landing_page,
      date: '22th oct 2024\nat 11:00 PM',
      amount: r'$20,129',
      isWithDrawal: false,
    ),
    TransactionModel(
      title: S.current.juni_mobile_app,
      date: '22th oct 2024\nat 17:00 PM',
      amount: r'$20,129',
      isWithDrawal: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: (showAll ? items : items.take(1)).map((e) => TransactionItem(transactionModel: e)).toList(),
    );
    
    // return ListView.builder(
    //   shrinkWrap: true,
    //   itemBuilder: (context, index) {
    //     return TransactionItem(transactionModel: items[index]);
    //   },
    //   itemCount: items.length
    // );
  }
}