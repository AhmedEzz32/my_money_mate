import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  final String image;
  
  const AllExpensesItemHeader({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: const ShapeDecoration(
            shape: OvalBorder(),
            color: Color(0xfffAfAFa)
          ),
          child: Center(child: SvgPicture.asset(image)),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.5707963267949 * 2,
          child: const Icon(
            Icons.arrow_back_ios_rounded,
            color:Color(0xff064061),
          ),
        ),
      ],
    );
  }
}