import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData()
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          activeIndex = pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        }
      ),
      sectionsSpace: 0,
      sections: getGenerateSection,    
    );
  }

  List<PieChartSectionData> get getGenerateSection {
    return [
      _createSectionData(
        const Color(0xff208bc7), 
        40,
        activeIndex == 0 ? 60 : 50,
      ),
      _createSectionData(
        const Color(0xff4db7f2), 
        25,
        activeIndex == 1 ? 60 : 50,
      ),
      _createSectionData(
        const Color(0xff064060), 
        20,
        activeIndex == 2 ? 60 : 50,
      ),
      _createSectionData(
        const Color(0xffe2decd), 
        22,
        activeIndex == 3 ? 60 : 50,
      ),
    ];
  }

  PieChartSectionData _createSectionData(Color color, double value , double radius) {
    return PieChartSectionData(
      showTitle: false,
      color: color,
      value: value,
      radius: radius,
    );
  } 
}
