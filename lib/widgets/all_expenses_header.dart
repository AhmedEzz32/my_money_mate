import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utils/styles.dart';
import 'range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'all expenses',
          style: AppStyles.styleSemiBold20,
        ),
        Spacer(),
        RangeOptions()
      ],
    );
  }
}
