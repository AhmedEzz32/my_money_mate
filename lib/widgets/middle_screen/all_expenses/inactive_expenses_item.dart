import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/models/all_expenses_item_model.dart';
import 'package:responsive_adaptive_app/utils/styles.dart';

import 'all_expenses_item_header.dart';

class InActiveExpensesItem extends StatefulWidget {
  const InActiveExpensesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  State<InActiveExpensesItem> createState() => _InActiveExpensesItemState();
}

class _InActiveExpensesItemState extends State<InActiveExpensesItem> {
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
          AllExpensesItemHeader(image: widget.itemModel.image),
          const SizedBox(height: 34,),
          Text(
            widget.itemModel.title,
            style: AppStyles.styleSemiBold16,
          ),    
          const SizedBox(height: 8,),      
          Text(
            widget.itemModel.date,
            style: AppStyles.styleRegular14,
          ),   
          const SizedBox(height: 16,),        
          Text(
            widget.itemModel.price,
            style: AppStyles.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}
