import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_adaptive_app/models/drawer_item_model.dart';
import 'package:responsive_adaptive_app/utils/theme/themes.dart';

class ActiveDrawerItem extends StatelessWidget {

  final DrawerItemModel drawerItemModel;

  const ActiveDrawerItem({
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
          style: Themes(context).theme.primary.h1.copyWith(
            color: Themes(context).theme.colors.primary,
          ),
        ),
      ),
      trailing: Container(
        width: 3.27,
        decoration: BoxDecoration(
          color: Themes(context).theme.colors.primary,
        ),
      ),
    );
  }
}
