import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_adaptive_app/models/user_info_model.dart';
import 'package:responsive_adaptive_app/utils/styles.dart';

class UserInfoListTile extends StatelessWidget {
  final UserInfoModel userInfoModel;
  
  const UserInfoListTile({
    super.key,
    required this.userInfoModel,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(userInfoModel.image),
        title: Text(
          userInfoModel.title,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          userInfoModel.subTitle,
          style: AppStyles.styleRegular12,
        ),
      ),
    );
  }
}