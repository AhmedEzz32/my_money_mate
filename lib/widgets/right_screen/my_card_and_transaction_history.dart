import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/widgets/middle_screen/all_expenses/custom_background_container.dart';
import 'package:responsive_adaptive_app/widgets/right_screen/mycard/my_card_section.dart';
import 'package:responsive_adaptive_app/widgets/right_screen/transaction_history/transaction_history.dart';

class MyCardAndTransactionHistory extends StatelessWidget {
  const MyCardAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          CardViewSection(),
          Divider(
            color:Color(0xfff1f1f1),
            height: 20,
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}