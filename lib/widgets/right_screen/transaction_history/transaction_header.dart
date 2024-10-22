import 'package:flutter/widgets.dart';
import 'package:responsive_adaptive_app/utils/styles.dart';

class MyTransactionHeader extends StatelessWidget {
  const MyTransactionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Transaction History',
          style: AppStyles.styleSemiBold18,
        ),
        Text(
          'See All',
          style: AppStyles.styleMedium14.copyWith(
            color: const Color(0xff4eb7f2),
          ),
        ),
      ],
    );
  }
}