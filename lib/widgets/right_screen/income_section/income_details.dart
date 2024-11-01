import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/widgets/right_screen/income_section/item_details_model.dart';
import 'item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const itemDetails = [
    ItemDetailsModel(
      color: Color(0xff208bc7),
      title: 'Design service',
      value: '40%',
    ),
    ItemDetailsModel(
      color: Color(0xff4db7f2),
      title: 'Design Product',
      value: '25%',
    ),
    ItemDetailsModel(
      color: Color(0xff064060),
      title: 'Product Royalty',
      value: '20%',
    ),    
    ItemDetailsModel(
      color: Color(0xffe2decd),
      title: 'Other',
      value: '22%',
    ),
  ];

  @override
  Widget build(BuildContext context) {

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

