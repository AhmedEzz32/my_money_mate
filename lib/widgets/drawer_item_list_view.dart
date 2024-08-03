import 'package:flutter/widgets.dart';
import 'package:responsive_adaptive_app/models/drawer_item_model.dart';
import 'package:responsive_adaptive_app/utils/app_images.dart';
import 'drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
  });

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  
  int selctedIndex = 0;

  final List<DrawerItemModel> items = [
    const DrawerItemModel(title: "DashBoard", image: Assets.imagesDashboard),
    const DrawerItemModel(title: 'MyTransaction', image: Assets.imagesMyTransaction),
    const DrawerItemModel(title: 'Statistic', image: Assets.imagesStatistics),
    const DrawerItemModel(title: 'Wallet Acount', image: Assets.imagesWalletAccount),
    const DrawerItemModel(title: 'My Investment', image: Assets.imagesMyInvestment),
  ];
  
  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) => GestureDetector(
        onTap: (){
          if(selctedIndex != index) {
            setState(() {
              selctedIndex = index;
            });
          }
        },
        child: DrawerItem(
          drawerItemModel: items[index],
          isActive: selctedIndex == index,
        ),
      ),
      separatorBuilder: (BuildContext context, int index)=> const SizedBox(height: 20,),
    );
  }
}