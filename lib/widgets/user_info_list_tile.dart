import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_adaptive_app/utils/styles.dart';

class UserInfoListTile extends StatelessWidget {
  final String image , title , subtitle;
  
  const UserInfoListTile({
    super.key, 
    required this.image, 
    required this.title, 
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(
          title,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          subtitle,
          style: AppStyles.styleRegular12,
        ),
      ),
    );
  }
}