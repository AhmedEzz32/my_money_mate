import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_adaptive_app/models/drawer_item_model.dart';
import 'package:responsive_adaptive_app/utils/theme/themes.dart';

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
      title: FittedBox(
        alignment: AlignmentDirectional.centerStart,
        fit: BoxFit.scaleDown,
        child: Text(
          drawerItemModel.title,
          style: Themes(context).theme.info4.h4Meduim,
        ),
      ),
      trailing: Container(
        width: 3.27,
        decoration: BoxDecoration(
          color: Themes(context).theme.colors.background,
        ),
      ),
    );
  }
}
