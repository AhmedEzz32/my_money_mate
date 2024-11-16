import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_adaptive_app/utils/theme/themes.dart';

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
                  color: imageBackground ?? Themes(context).theme.colors.body2
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image, 
                    colorFilter: ColorFilter.mode(imageColor ?? Themes(context).theme.colors.primary, BlendMode.srcIn),
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
              color: imageColor?? Themes(context).theme.colors.info4,
            ),
          ),
        ),
      ],
    );
  }
}
