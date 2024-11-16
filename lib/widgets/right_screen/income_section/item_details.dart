import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utils/theme/themes.dart';
import 'package:responsive_adaptive_app/widgets/right_screen/income_section/item_details_model.dart';

class ItemDetails extends StatelessWidget {
  final ItemDetailsModel itemDetailsModel;
  const ItemDetails({
    super.key, 
    required this.itemDetailsModel,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemDetailsModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        itemDetailsModel.title,
        style: Themes(context).theme.natural3.body4,
      ),
      trailing: Text(
        itemDetailsModel.value,
        style: Themes(context).theme.natural3.body4,
      ),
      dense: true,
      contentPadding: EdgeInsets.zero,
      minLeadingWidth: 12,
    );
  }
}