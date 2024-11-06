import 'package:flutter/material.dart';
import 'transaction_header.dart';
import 'transaction_history_list_view.dart';

class TransactionHistory extends StatefulWidget {
  const TransactionHistory({super.key});

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  bool showAll = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyTransactionHeader(
          showAll: showAll,
          onToggle: toggleShowAll,
        ),
        const SizedBox(
          height: 10,
        ),
        TransactionHistoryListView(showAll: showAll,),
      ],
    );
  }

  void toggleShowAll() {
    setState(() {
      showAll = !showAll;
    });
  }
}