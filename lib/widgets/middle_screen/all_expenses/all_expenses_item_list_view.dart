import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/models/all_expenses_item_model.dart';
import 'package:responsive_adaptive_app/utils/app_images.dart';
import 'package:responsive_adaptive_app/utils/translation/generated/l10n.dart';
import 'package:responsive_adaptive_app/widgets/middle_screen/all_expenses/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {

  const AllExpensesItemListView({super.key});

  static List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
      image: Assets.imagesBalance, 
      title: S.current.balance,
      date: S.current.augest_2024, 
      price: S.current.dollar_20_129,
    ),
    AllExpensesItemModel(
      image: Assets.imagesCardReceive, 
      title: S.current.income, 
      date: S.current.augest_2024,
      price: S.current.dollar_20_129,
    ),
    AllExpensesItemModel(
      image: Assets.imagesCardSend, 
      title: S.current.expenses, 
      date: S.current.augest_2024,
      price: S.current.dollar_20_129,
    ),
  ];

  @override
  State<AllExpensesItemListView> createState() => _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      // children: items.map((e) => Expanded(child: AllExpensesItem(itemModel: e))).toList(),
      children: AllExpensesItemListView.items.asMap().entries.map((e){
        int index = e.key;
        var item = e.value;

        return Flexible(
          child: Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: MediaQuery.sizeOf(context).width * 0.01),
            child: GestureDetector(
              onTap: (){
                if(selectedIndex != index) {
                  setState(() {
                    selectedIndex = index;
                  });
                }
              },
              child: AllExpensesItem(
                itemModel: item, 
                isSelected: selectedIndex == index,
              )
            ),
          )
        );
      }).toList(),
    );
  }
}