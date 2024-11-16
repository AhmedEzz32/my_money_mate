import 'package:flutter/widgets.dart';
import 'package:responsive_adaptive_app/utils/theme/themes.dart';
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
          style: Themes(context).theme.info4.h4Meduim,
        ),
        const SizedBox(height: 12),
        CustomTextField(hint: hint),
      ],
    );
  }
}