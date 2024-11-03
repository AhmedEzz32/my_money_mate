import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utils/styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Quick Invoice",
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        Container(
          height: 48,
          width: 48,
          decoration: const ShapeDecoration(
            color: Color(0xfffafafa),
            shape: OvalBorder(),
          ),
          child: const Icon(
            Icons.add,
            color:Color(0xff4EB7F2),
          ),
        ),
      ],
    );
  }
}
