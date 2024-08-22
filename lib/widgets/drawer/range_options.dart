import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utils/styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(12),
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1 , color: Color(0xfff1f1f1)),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
      child: Row(
        children: [
          const Text(
            'Monthly',
            style: AppStyles.styleSemiBold16,
          ),
          const SizedBox(width: 18,),
          IconButton(
            onPressed: (){},
            icon: Transform.rotate(
              angle: -1.5707963267949,
              child: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Color(0xff064061),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
