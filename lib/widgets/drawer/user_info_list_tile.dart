import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_adaptive_app/models/user_info_model.dart';
import 'package:responsive_adaptive_app/utils/theme/themes.dart';

class UserInfoListTile extends StatelessWidget {
  final UserInfoModel userInfoModel;
  
  const UserInfoListTile({
    super.key,
    required this.userInfoModel,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Themes(context).theme.colors.background,
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(userInfoModel.image),
        title: FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(
            userInfoModel.title.call(),
            style: Themes(context).theme.primary.h4Bold,
          ),
        ),
        subtitle: FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(
            userInfoModel.subTitle,
            style: Themes(context).theme.natural3.body3,
          ),
        ),
      ),
    );
  }
}