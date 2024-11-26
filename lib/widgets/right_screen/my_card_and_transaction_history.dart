import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utils/theme/themes.dart';
import 'package:responsive_adaptive_app/widgets/middle_screen/all_expenses/custom_background_container.dart';
import 'package:responsive_adaptive_app/widgets/right_screen/mycard/my_card_section.dart';
import 'package:responsive_adaptive_app/widgets/right_screen/transaction_history/transaction_history.dart';

class MyCardAndTransactionHistory extends StatelessWidget {
  const MyCardAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          CardViewSection(),
          Divider(
            color: Themes(context).theme.colors.body2,
            height: 20,
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}