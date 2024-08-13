import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/widgets/middle_screen/all_expenses/all_expenses_header.dart';
import 'all_expenses_item_list_view.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      )),
      child: const Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16,),
          AllExpensesItemListView()
        ],
      ),
    );
  }
}