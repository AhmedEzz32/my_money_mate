import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/widgets/middle_screen/all_expenses/all_expenses_header.dart';
import 'all_expenses_item_list_view.dart';
import 'custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16,),
          AllExpensesItemListView()
        ],
      ),
    );
  }
}
