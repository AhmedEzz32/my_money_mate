import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utils/styles.dart';

class RangeOptions extends StatelessWidget {
  final String text;
  const RangeOptions({
    super.key, 
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(8),
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Color(0xfff1f1f1),
          ),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
      child: Row(
        children: [
          Text(
            text,
            style: AppStyles.styleSemiBold14(context),
          ),
          const SizedBox(width: 4),
          Transform.rotate(
            angle: -1.5707963267949,
            child: const Icon(
              Icons.arrow_back_ios_rounded,
              size: 16,
              color: Color(0xff064061),
            ),
          ),
        ],
      ),
    );
  }
}
