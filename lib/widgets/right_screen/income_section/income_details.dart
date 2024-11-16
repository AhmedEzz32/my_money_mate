import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utils/theme/themes.dart';
import 'package:responsive_adaptive_app/utils/translation/generated/l10n.dart';
import 'package:responsive_adaptive_app/widgets/right_screen/income_section/item_details_model.dart';
import 'item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  

  @override
  Widget build(BuildContext context) {
  List<ItemDetailsModel> itemDetails = [
    ItemDetailsModel(
      color: Themes(context).theme.colors.info1, 
      title: S.current.design_serice,
      value: '40%',
    ),
    ItemDetailsModel(
      color: Themes(context).theme.colors.body5,
      title: S.current.design_product,
      value: '25%',
    ),
    ItemDetailsModel(
      color: Themes(context).theme.colors.info4,
      title: S.current.product_royalty,
      value: '20%',
    ),    
    ItemDetailsModel(
      color: Themes(context).theme.colors.body6,
      title: S.current.other,
      value: '22%',
    ),
  ];
    return Column(
      children: List.generate(
        itemDetails.length, 
        (index) => ItemDetails(
          itemDetailsModel: itemDetails[index],
        ),
      ),
    );
    // return ListView.builder(
    //   padding: EdgeInsets.zero,
    //   shrinkWrap: true,
    //   itemCount: itemDetails.length,
    //   itemBuilder: (BuildContext context, int index) {
    //     return ItemDetails(
    //       itemDetailsModel: itemDetails[index],
    //     );
    //   },
    // );
  }
}

