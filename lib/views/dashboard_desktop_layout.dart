import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_adaptive_app/widgets/middle_screen/all_expenses/all_expenses.dart';
import 'package:responsive_adaptive_app/widgets/middle_screen/quick_invoice/transaction/quick_invoice.dart';
import '../widgets/drawer/custom_drawer.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40,),
                AllExpenses(),
                SizedBox(height: 24,),
                QuickInvoice(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
