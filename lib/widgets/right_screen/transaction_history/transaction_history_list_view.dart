import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/widgets/right_screen/transaction_history/transaction_item.dart';
import 'package:responsive_adaptive_app/widgets/right_screen/transaction_history/transaction_model.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const items = [
    TransactionModel(
      title: 'Cash Withdrawal',
      date: '22th oct 2024\nat 12:00 AM',
      amount: r'$20,129',
      isWithDrawal: true,
    ),
    TransactionModel(
      title: 'Landing Page',
      date: '22th oct 2024\nat 11:00 PM',
      amount: r'$20,129',
      isWithDrawal: false,
    ),
    TransactionModel(
      title: 'Juni Mobile App',
      date: '22th oct 2024\nat 17:00 PM',
      amount: r'$20,129',
      isWithDrawal: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return TransactionItem(transactionModel: items[index]);
      },
      itemCount: items.length
    );
  }
}