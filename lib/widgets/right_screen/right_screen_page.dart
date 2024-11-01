import 'package:flutter/material.dart';
import 'income_section/income_section.dart';
import 'my_card_and_transaction_history.dart';

class RightScreenPage extends StatelessWidget {
  const RightScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          MyCardAndTransactionHistory(),
          SizedBox(
            height: 24,
          ),
          IncomeSection(),
        ],
      ),
    );
  }
}