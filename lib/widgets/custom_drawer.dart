import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utils/app_images.dart';
import 'package:responsive_adaptive_app/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          UserInfoListTile(image: Assets.imagesAvatar1, title: 'Lekan Okeowo', subtitle: 'demo@gmail.com')
        ],
      ),
    );
  }
}