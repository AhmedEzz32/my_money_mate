import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/models/drawer_item_model.dart';
import 'package:responsive_adaptive_app/widgets/drawer/active_drawer_item.dart';
import 'package:responsive_adaptive_app/widgets/drawer/inactive_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  final DrawerItemModel drawerItemModel;
  final bool isActive;

  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    this.isActive = true,
  });

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
