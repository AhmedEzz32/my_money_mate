import 'package:flutter/material.dart';
import 'my_card_and_transaction_history.dart';

class RightScreenPage extends StatelessWidget {
  const RightScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: MyCardAndTransactionHistory(),
    );
  }
}