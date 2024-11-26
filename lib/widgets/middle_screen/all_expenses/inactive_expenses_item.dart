import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/models/all_expenses_item_model.dart';
import 'package:responsive_adaptive_app/utils/theme/themes.dart';
import 'all_expenses_item_header.dart';

class InActiveExpensesItem extends StatelessWidget {
  const InActiveExpensesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsetsDirectional.symmetric(horizontal: MediaQuery.sizeOf(context).width * 0.020 , vertical: MediaQuery.sizeOf(context).height * 0.016),
      decoration: ShapeDecoration(
        color: Themes(context).theme.colors.background,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1 , color: Themes(context).theme.colors.body2),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(image: itemModel.image),
          const SizedBox(height: 34,),
          FittedBox(
            alignment: AlignmentDirectional.centerStart,
            fit: BoxFit.scaleDown,
            child: Text(
              itemModel.title.call(),
              style: Themes(context).theme.info4.h4Bold,
            ),
          ),
          const SizedBox(height: 8,),
          FittedBox(
            alignment: AlignmentDirectional.centerStart,
            fit: BoxFit.scaleDown,
            child: Text(
              itemModel.date.call(),
              style: Themes(context).theme.natural3.body4,
            ),
          ),   
          const SizedBox(height: 16,),        
          FittedBox(
            alignment: AlignmentDirectional.centerStart,
            fit: BoxFit.scaleDown,
            child: Text(
              itemModel.price.call(),
              style: Themes(context).theme.primary.h3large,
            ),
          ),
        ],
      ),
    );
  }
}
