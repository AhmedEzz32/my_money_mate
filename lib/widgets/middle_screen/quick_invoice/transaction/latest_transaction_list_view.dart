import 'package:flutter/widgets.dart';
import 'package:responsive_adaptive_app/models/user_info_model.dart';
import 'package:responsive_adaptive_app/utils/app_images.dart';
import 'package:responsive_adaptive_app/utils/custom_gesture_detector_widget.dart';
import 'package:responsive_adaptive_app/utils/translation/generated/l10n.dart';
import 'package:responsive_adaptive_app/widgets/drawer/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {

  static var items = [
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: S.current.khaled_ezz,
      subTitle: 'khaledezz@gmail.com',
    ),    
    UserInfoModel(
      image: Assets.imagesAvatar2,
      title: S.current.osama_ezz,
      subTitle: 'osamaezz@gmail.com',
    ),    
    UserInfoModel(
      image: Assets.imagesAvatar3,
      title: S.current.ahmed_ezz,
      subTitle: 'ahmedezz@gmail.com',
    ),    
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: S.current.khaled_ezz,
      subTitle: 'khaledezz@gmail.com',
    ),    
    UserInfoModel(
      image: Assets.imagesAvatar2,
      title: S.current.osama_ezz,
      subTitle: 'osamaezz@gmail.com',
    ),    
    UserInfoModel(
      image: Assets.imagesAvatar3,
      title: S.current.ahmed_ezz,
      subTitle: 'ahmedezz@gmail.com',
    ),
  ];

  const LatestTransactionListView({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();

    return CustomGestureDetectorWidget(
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