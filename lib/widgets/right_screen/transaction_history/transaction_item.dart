import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utils/styles.dart';
import 'package:responsive_adaptive_app/widgets/right_screen/transaction_history/transaction_model.dart';

class TransactionItem extends StatelessWidget {
  final TransactionModel transactionModel;
  const TransactionItem({super.key, required this.transactionModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xfffafafa),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: AppStyles.styleSemiBold14(context),
        ),
        subtitle: Text(
          transactionModel.date,
          style: AppStyles.styleRegular12(context).copyWith(
            color: const Color(0xffaaaaaa)
          ),
        ),
        trailing: Text(
          transactionModel.amount,
          style: AppStyles.styleSemiBold16(context).copyWith(
            color: transactionModel.isWithDrawal ? 
              const Color(0xfff3735e)
            : const Color(0xff7cd87a),
          ),
        ),
      ),
    );
  }
}