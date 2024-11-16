import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utils/theme/themes.dart';
import 'package:responsive_adaptive_app/utils/translation/generated/l10n.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getChartData()),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pietouchResponse) {
          activeIndex =
              pietouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
          title: activeIndex == 0 ? S.current.design_service : '40%',
          titleStyle: Themes(context).theme.info4.labelMedium
              .copyWith(color: activeIndex == 0 ? null : Themes(context).theme.colors.background),
          radius: activeIndex == 0 ? 60 : 50,
          value: 40,
          color: Themes(context).theme.colors.info1,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 1 ? 2.0 : null,
          titleStyle: Themes(context).theme.info4.labelMedium
              .copyWith(color: activeIndex == 1 ? null : Themes(context).theme.colors.background),
          title: activeIndex == 1 ? S.current.design_product : '25%',
          value: 25,
          radius: activeIndex == 1 ? 60 : 50,
          color: Themes(context).theme.colors.info2,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 2 ? 1.4 : null,
          titleStyle: Themes(context).theme.info4.labelMedium
              .copyWith(color: activeIndex == 2 ? null : Themes(context).theme.colors.background),
          title: activeIndex == 2 ? S.current.product_royalty : '20%',
          value: 20,
          radius: activeIndex == 2 ? 60 : 50,
          color: Themes(context).theme.colors.info4,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3 ? 1.4 : null,
          titleStyle: Themes(context).theme.info4.labelMedium
              .copyWith(color: activeIndex == 3 ? null : Themes(context).theme.colors.background),
          title: activeIndex == 3 ? S.current.other : '22%',
          value: 22,
          radius: activeIndex == 3 ? 60 : 50,
          color: Themes(context).theme.colors.body6,
        ),
      ],
    );
  }
}