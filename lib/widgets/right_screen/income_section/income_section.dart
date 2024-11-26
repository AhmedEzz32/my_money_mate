import 'package:flutter/widgets.dart';
import 'package:responsive_adaptive_app/widgets/middle_screen/all_expenses/custom_background_container.dart';
import 'package:responsive_adaptive_app/widgets/right_screen/income_section/income_section_body.dart';
import 'income_secction_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          IncomeSectionBody(),
        ],
      ),
    );
  }
}