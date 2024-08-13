import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_adaptive_app/models/drawer_item_model.dart';
import 'package:responsive_adaptive_app/utils/styles.dart';

class InActiveDrawerItem extends StatelessWidget {

  final DrawerItemModel drawerItemModel;

  const InActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.styleMedium16,
      ),
      trailing: Container(
        width: 3.27,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
      ),
    );
  }
}
