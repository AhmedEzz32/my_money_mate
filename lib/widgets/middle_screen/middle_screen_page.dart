import 'package:flutter/widgets.dart';
import 'all_expenses/all_expenses.dart';
import 'quick_invoice/transaction/quick_invoice.dart';

class MiddleScreenPage extends StatelessWidget {
  const MiddleScreenPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 24),
        child: Column(
          children: [
            AllExpenses(),
            SizedBox(height: 24,),
            QuickInvoice(),
          ],
        ),
      ),
    );
  }
}
