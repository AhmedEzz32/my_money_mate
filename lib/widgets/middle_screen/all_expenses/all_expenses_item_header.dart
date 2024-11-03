import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  final String image;
  final Color? imageBackground , imageColor; 
  
  const AllExpensesItemHeader({
    super.key, 
    required this.image, 
    this.imageBackground, 
    this.imageColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 40),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  shape: const OvalBorder(),
                  color: imageBackground ?? const Color(0xfffAfAFa)
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image, 
                    colorFilter: ColorFilter.mode(imageColor ?? const Color(0xff4EB7F2), BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ),
        Flexible(
          child: Transform.rotate(
            angle: -1.5707963267949 * 2,
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: imageColor?? const Color(0xff064061),
            ),
          ),
        ),
      ],
    );
  }
}
