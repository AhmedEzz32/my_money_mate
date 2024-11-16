import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utils/theme/themes.dart';
import 'package:responsive_adaptive_app/widgets/right_screen/transaction_history/transaction_model.dart';

class TransactionItem extends StatelessWidget {
  final TransactionModel transactionModel;
  const TransactionItem({super.key, required this.transactionModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Themes(context).theme.colors.background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: Themes(context).theme.info4.body2Bold,
        ),
        subtitle: Text(
          transactionModel.date,
          style: Themes(context).theme.natural3.body3,
        ),
        trailing: Text(
          transactionModel.amount,
          style: Themes(context).theme.info4.h4Bold.copyWith(
            color: transactionModel.isWithDrawal ? 
              const Color(0xfff3735e)
            : const Color(0xff7cd87a),
          ),
        ),
      ),
    );
  }
}