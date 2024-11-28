import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/models/drawer_item_model.dart';
import 'package:responsive_adaptive_app/models/user_info_model.dart';
import 'package:responsive_adaptive_app/utils/app_images.dart';
import 'package:responsive_adaptive_app/utils/custom_gesture_detector_widget.dart';
import 'package:responsive_adaptive_app/utils/services/settings_service.dart';
import 'package:responsive_adaptive_app/utils/theme/themes.dart';
import 'package:responsive_adaptive_app/utils/translation/generated/l10n.dart';
import 'package:responsive_adaptive_app/widgets/drawer/inactive_drawer_item.dart';
import 'package:responsive_adaptive_app/widgets/drawer/user_info_list_tile.dart';
import 'drawer_item_list_view.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  bool showSettingOption = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.5,
      color: Themes(context).theme.colors.background,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                image: Assets.imagesAvatar1,
                title: () => S.current.ahmed_ezz,
                subTitle: 'ahmed.mobiledev@gmail.com',
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          // ignore: prefer_const_constructors
          DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                CustomGestureDetectorWidget(
                  onTap: () {
                    setState(() {
                      showSettingOption = !showSettingOption;
                    });
                  },
                  child: InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                      title: () => S.of(context).settings,
                      image: Assets.imagesDashboard,
                    ),
                  ),
                ),
                if (showSettingOption)
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: CustomGestureDetectorWidget(
                            onTap: () {
                              toggleThemeMode();
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.brightness_3_outlined,
                                  color: Themes(context).theme.colors.primary,
                                  size: 22,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  S.current.dark_mode,
                                  style: Themes(context).theme.secondry.body4,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: CustomGestureDetectorWidget(
                            onTap: () {
                              SettingService().changeLanguage;
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.language,
                                  color: Themes(context).theme.colors.primary,
                                  size: 22,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  SettingService().isRTL ? S.current.english : S.current.arabic,
                                  style: Themes(context).theme.secondry.body4,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                      ],
                    ),
                  ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: () => S.of(context).logout,
                    image: Assets.imagesLogout,
                  ),
                ),
                const Flexible(child: SizedBox(height: 48)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void toggleThemeMode() {
    final currentMode = Themes(context).mode;
    if (currentMode == ThemeMode.dark) {
      Themes(context).mode = ThemeMode.light;
    } else {
      Themes(context).mode = ThemeMode.dark;
    }
  }
}
