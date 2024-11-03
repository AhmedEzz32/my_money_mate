import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_adaptive_app/utils/styles.dart';
import '../../drawer/range_options.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'income',
            style: AppStyles.styleSemiBold18(context),
          ),
          const RangeOptions(
            text: 'Monthly',
          ),
        ],
      ),
    );
  }
}