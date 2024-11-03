import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_adaptive_app/utils/app_images.dart';
import 'package:responsive_adaptive_app/utils/styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        margin: const EdgeInsets.only(right: 5),
        decoration: ShapeDecoration(
          image: const DecorationImage(
            fit: BoxFit.fill, 
            image: AssetImage(
              Assets.imagesCardBackground,
            ),
          ),
          color: const Color(0xFF4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [ 
            ListTile(
              contentPadding:
                  const EdgeInsets.only(left: 21, right: 32, top: 6),
              title: Text(
                  'Name card',
                  style: AppStyles.styleRegular14(context).copyWith(
                    color: Colors.white,
                  )),
              subtitle: Text(
                'Ahmed Ezz',
                style: AppStyles.styleMedium18(context),
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 48 - 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: AppStyles.styleSemiBold16(context).copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '12/20 - 124',
                    style: AppStyles.styleRegular14(context)
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            const Flexible(
              child: SizedBox(
                height: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}