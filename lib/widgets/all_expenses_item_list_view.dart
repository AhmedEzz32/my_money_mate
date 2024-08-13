import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/models/all_expenses_item_model.dart';
import 'package:responsive_adaptive_app/utils/app_images.dart';
import 'package:responsive_adaptive_app/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatelessWidget {

  const AllExpensesItemListView({super.key});

  static const items = [
    AllExpensesItemModel(
      image: Assets.imagesBalance, 
      title: 'Balance',
      date: 'Augest 2024', 
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesCardReceive, 
      title: 'Income', 
      date: 'Augest 2024', 
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesCardSend, 
      title: 'Expenses', 
      date: 'Augest 2024', 
      price: r'$20,129',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      // children: items.map((e) => Expanded(child: AllExpensesItem(itemModel: e))).toList(),
      children: items.asMap().entries.map((e){
        int index =  e.key;
        var item = e.value;

        return Expanded(
          child: Padding(
            padding: index == 1 ? const EdgeInsetsDirectional.symmetric(horizontal: 12) : EdgeInsetsDirectional.zero,
            child: AllExpensesItem(itemModel: item),
          )
        );
      }).toList(),
    );
  }
}