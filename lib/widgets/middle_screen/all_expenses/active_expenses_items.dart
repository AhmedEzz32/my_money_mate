import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utils/theme/themes.dart';
import 'package:responsive_adaptive_app/widgets/middle_screen/all_expenses/all_expenses_item_header.dart';
import '../../../models/all_expenses_item_model.dart';

class ActiveExpensesItem extends StatefulWidget {
  final AllExpensesItemModel itemModel;

  const ActiveExpensesItem({
    super.key,
    required this.itemModel,
  });

  @override
  State<ActiveExpensesItem> createState() => _ActiveExpensesItemState();
}

class _ActiveExpensesItemState extends State<ActiveExpensesItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsetsDirectional.symmetric(horizontal: MediaQuery.sizeOf(context).width * 0.020 , vertical: MediaQuery.sizeOf(context).height * 0.016),
      decoration: ShapeDecoration(
        color: Themes(context).theme.colors.primary,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: widget.itemModel.image,
            imageBackground: Themes(context).theme.colors.background.withOpacity(0.10000000149011612),
            imageColor: Themes(context).theme.colors.background,
          ),
          const SizedBox(height: 34,),
          FittedBox(
            alignment: AlignmentDirectional.centerStart,
            fit: BoxFit.scaleDown,
            child: Text(
              widget.itemModel.title,
              style: Themes(context).theme.background.h4Bold,
            ),
          ),
          const SizedBox(height: 8,),      
          FittedBox(
            alignment: AlignmentDirectional.centerStart,
            fit: BoxFit.scaleDown,
            child: Text(
              widget.itemModel.date,
              style: Themes(context).theme.background.body4,
            ),
          ),
          const SizedBox(height: 16,),
          FittedBox(
            alignment: AlignmentDirectional.centerStart,
            fit: BoxFit.scaleDown,
            child: Text(
              widget.itemModel.price,
              style: Themes(context).theme.background.h3large,
            ),
          ),
        ],
      ),
    );
  }
}
