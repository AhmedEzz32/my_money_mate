import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/widgets/middle_screen/all_expenses/custom_background_container.dart';
import 'latest_transaction.dart';
import 'quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 16),
          LatestTransaction(),
        ],
      )
    );
  }
}