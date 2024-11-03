import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utils/styles.dart';
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
      decoration: const ShapeDecoration(
        color: Color(0xff4EB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: widget.itemModel.image,
            imageBackground: Colors.white.withOpacity(0.10000000149011612),
            imageColor: Colors.white,
          ),
          const SizedBox(height: 34,),
          FittedBox(
            alignment: AlignmentDirectional.centerStart,
            fit: BoxFit.scaleDown,
            child: Text(
              widget.itemModel.title,
              style: AppStyles.styleSemiBold16(context).copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(height: 8,),      
          FittedBox(
            alignment: AlignmentDirectional.centerStart,
            fit: BoxFit.scaleDown,
            child: Text(
              widget.itemModel.date,
              style: AppStyles.styleRegular14(context).copyWith(color:const Color(0xfffafafa)),
            ),
          ),
          const SizedBox(height: 16,),
          FittedBox(
            alignment: AlignmentDirectional.centerStart,
            fit: BoxFit.scaleDown,
            child: Text(
              widget.itemModel.price,
              style: AppStyles.styleSemiBold24(context).copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
