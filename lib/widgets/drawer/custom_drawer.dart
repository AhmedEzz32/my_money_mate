import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/models/drawer_item_model.dart';
import 'package:responsive_adaptive_app/models/user_info_model.dart';
import 'package:responsive_adaptive_app/utils/app_images.dart';
import 'package:responsive_adaptive_app/widgets/drawer/inactive_drawer_item.dart';
import 'package:responsive_adaptive_app/widgets/drawer/user_info_list_tile.dart';
import 'drawer_item_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                image: Assets.imagesAvatar1, 
                title: 'Ahmed Ezz', 
                subTitle: 'ahmedezz@gmail.com',
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),

          DrawerItemListView(),

          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),

                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: "Settings system", 
                    image: Assets.imagesDashboard,
                  ),
                ),

                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: "LogOut Account", 
                    image: Assets.imagesMyTransaction,
                  ),
                ),

                SizedBox(height: 48,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
