import 'package:flutter/widgets.dart';
import 'package:responsive_adaptive_app/utils/styles.dart';
import '../forms/custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  final String title , hint;

  const TitleTextField({super.key, required this.title, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(height: 12),
        CustomTextField(hint: hint),
      ],
    );
  }
}