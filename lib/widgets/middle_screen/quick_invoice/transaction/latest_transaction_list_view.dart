import 'package:flutter/widgets.dart';
import 'package:responsive_adaptive_app/models/user_info_model.dart';
import 'package:responsive_adaptive_app/utils/app_images.dart';
import 'package:responsive_adaptive_app/widgets/drawer/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {

  static const items = [
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: 'Khaled Ezz',
      subTitle: 'khaledezz@gmail.com',
    ),    
    UserInfoModel(
      image: Assets.imagesAvatar2,
      title: 'Osama Ezz',
      subTitle: 'osamaezz@gmail.com',
    ),    
    UserInfoModel(
      image: Assets.imagesAvatar3,
      title: 'Ahmed Ezz',
      subTitle: 'ahmedezz@gmail.com',
    ),    
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: 'Khaled Ezz',
      subTitle: 'khaledezz@gmail.com',
    ),    
    UserInfoModel(
      image: Assets.imagesAvatar2,
      title: 'Osama Ezz',
      subTitle: 'osamaezz@gmail.com',
    ),    
    UserInfoModel(
      image: Assets.imagesAvatar3,
      title: 'Ahmed Ezz',
      subTitle: 'ahmedezz@gmail.com',
    ),
  ];

  const LatestTransactionListView({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();

    return GestureDetector(
      onHorizontalDragUpdate: (details){
        scrollController.jumpTo(
          scrollController.offset - details.delta.dx, 
        );
      },
      child: SingleChildScrollView(
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        child: Row(
          children: items.map((e) => IntrinsicWidth(child: UserInfoListTile(userInfoModel: e))).toList(),
        ),
      ),
    );
  }
}