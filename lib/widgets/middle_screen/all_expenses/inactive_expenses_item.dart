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
      padding:  EdgeInsetsDirectional.symmetric(horizontal: MediaQuery.sizeOf(context).width * 0.020 , vertical: MediaQuery.sizeOf(context).height * 0.016),
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
          FittedBox(
            alignment: AlignmentDirectional.centerStart,
            fit: BoxFit.scaleDown,
            child: Text(
              widget.itemModel.title,
              style: AppStyles.styleSemiBold16(context),
            ),
          ),    
          const SizedBox(height: 8,),      
          FittedBox(
            alignment: AlignmentDirectional.centerStart,
            fit: BoxFit.scaleDown,
            child: Text(
              widget.itemModel.date,
              style: AppStyles.styleRegular14(context),
            ),
          ),   
          const SizedBox(height: 16,),        
          FittedBox(
            alignment: AlignmentDirectional.centerStart,
            fit: BoxFit.scaleDown,
            child: Text(
              widget.itemModel.price,
              style: AppStyles.styleSemiBold24(context),
            ),
          ),
        ],
      ),
    );
  }
}
