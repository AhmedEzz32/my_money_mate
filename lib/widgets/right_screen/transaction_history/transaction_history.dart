import 'package:flutter/material.dart';
import 'transaction_header.dart';
import 'transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MyTransactionHeader(),
        SizedBox(
          height: 10,
        ),
        TransactionHistoryListView(),
      ],
    );
  }
}

