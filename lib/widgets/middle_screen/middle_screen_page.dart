import 'package:flutter/widgets.dart';
import 'all_expenses/all_expenses.dart';
import 'quick_invoice/transaction/quick_invoice.dart';

class MiddleScreenPage extends StatelessWidget {
  final double? verticalPadding;
  const MiddleScreenPage({
    super.key,
    this.verticalPadding,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(vertical: verticalPadding ?? 24),
      child: Column(
        children: [
          AllExpenses(),
          SizedBox(height: 24,),
          QuickInvoice(),
        ],
      ),
    );
  }
}
