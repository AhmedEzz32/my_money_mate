import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_adaptive_app/utils/app_images.dart';
import 'package:responsive_adaptive_app/utils/globals.dart';
import 'package:responsive_adaptive_app/utils/theme/themes.dart';
import 'package:responsive_adaptive_app/utils/translation/generated/l10n.dart';

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
          color: Themes(context).theme.colors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [ 
            ListTile(
              contentPadding:
                  const EdgeInsetsDirectional.only(start: 21, end: 32, top: 6),
              title: Text(
                  S.of(cxt).name_card,
                  style: Themes(context).theme.background.body2Bold,
                  ),
              subtitle: Text(
                S.of(cxt).ahmed_ezz,
                style: Themes(context).theme.background.h3Meduim,
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 48 - 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: Themes(context).theme.info4.h4Bold,
                  ),
                  Text(
                    '12/20 - 124',
                    style: Themes(context).theme.background.body4,
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