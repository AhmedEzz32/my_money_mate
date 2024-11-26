import 'package:flutter/material.dart';
import 'income_section/income_section.dart';
import 'my_card_and_transaction_history.dart';

class RightScreenPage extends StatelessWidget {
  const RightScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MyCardAndTransactionHistory(),
            SizedBox(
              height: 24,
            ),
            IncomeSection(),
          ],
        ),
      ),
    );
  }
}