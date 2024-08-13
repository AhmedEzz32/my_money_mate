import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/models/all_expenses_item_model.dart';
import 'package:responsive_adaptive_app/widgets/middle_screen/all_expenses/active_expenses_items.dart';
import 'inactive_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  final AllExpensesItemModel itemModel;
  final bool isSelected;

  const AllExpensesItem({
    super.key, 
    required this.itemModel,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: const Duration(milliseconds: 500),
      firstChild: InActiveExpensesItem(itemModel: itemModel),
      secondChild: ActiveExpensesItem(itemModel: itemModel),
      crossFadeState: isSelected ? CrossFadeState.showSecond : CrossFadeState.showFirst,
    );
  }
}
