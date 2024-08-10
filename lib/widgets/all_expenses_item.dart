import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/models/all_expenses_item_model.dart';
import 'package:responsive_adaptive_app/utils/styles.dart';
import 'package:responsive_adaptive_app/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  final AllExpensesItemModel itemModel;

  const AllExpensesItem({super.key, required this.itemModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 20 , vertical: 16),
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1 , color: Color(0xfff1f1f1)),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(image: itemModel.image),
          const SizedBox(height: 34,),
          Text(
            itemModel.title,
            style: AppStyles.styleSemiBold16,
          ),    
          const SizedBox(height: 8,),      
          Text(
            itemModel.date,
            style: AppStyles.styleRegular14,
          ),   
          const SizedBox(height: 16,),        
          Text(
            itemModel.price,
            style: AppStyles.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}