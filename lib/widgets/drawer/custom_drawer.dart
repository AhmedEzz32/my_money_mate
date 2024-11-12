import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/models/drawer_item_model.dart';
import 'package:responsive_adaptive_app/models/user_info_model.dart';
import 'package:responsive_adaptive_app/utils/app_images.dart';
import 'package:responsive_adaptive_app/utils/translation/generated/l10n.dart';
import 'package:responsive_adaptive_app/widgets/drawer/inactive_drawer_item.dart';
import 'package:responsive_adaptive_app/widgets/drawer/user_info_list_tile.dart';
import 'drawer_item_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.5,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                image: Assets.imagesAvatar1,
                title: S.current.ahmed_ezz,
                subTitle: 'ahmed.mobiledev@gmail.com',
              ),
            ),
          ),

          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),

          const DrawerItemListView(),

          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),

                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: S.current.settings,
                    image: Assets.imagesDashboard,
                  ),
                ),

                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: S.current.logout, 
                    image: Assets.imagesLogout,
                  ),
                ),

                const Flexible(child: SizedBox(height: 48,)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
