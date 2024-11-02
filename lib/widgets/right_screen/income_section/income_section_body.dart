import 'package:flutter/widgets.dart';
import 'package:responsive_adaptive_app/utils/size_config.dart';
import 'package:responsive_adaptive_app/widgets/right_screen/income_section/income_chart.dart';

import 'income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    // use media query here for real time to avoid any error in the web
    final double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width >= 1750 ?
      const SizedBox()
      : const Row(
        children: [
          Expanded(
            child: IncomeChart(),
          ),
          SizedBox(
            width: 24,
          ),
          Expanded(
            flex: 2,
            child: IncomeDetails(),
          ),
        ],
      );
  }
}