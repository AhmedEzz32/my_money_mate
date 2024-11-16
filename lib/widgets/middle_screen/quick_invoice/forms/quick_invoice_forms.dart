import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utils/theme/themes.dart';
import 'package:responsive_adaptive_app/utils/translation/generated/l10n.dart';
import '../transaction/title_text_field.dart';
import 'custom_button.dart';

class QuickInvoiceForms extends StatelessWidget {
  const QuickInvoiceForms({super.key});

  @override
  Widget build(BuildContext context) {
    const sizedBoxWidth = SizedBox(width: 16,);
    const sizedBoxHeight = SizedBox(height: 24,);
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: S.current.customer_name, hint: S.current.type_customer_name,
              ),
            ),
            sizedBoxWidth,            
            Expanded(
              child: TitleTextField(
                title: S.current.customer_email, hint: S.current.type_customer_email,
              ),
            ),
          ],
        ),
        sizedBoxHeight,
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: S.current.item_name, hint: S.current.type_item_name,
              ),
            ),
            sizedBoxWidth,
            Expanded(
              child: TitleTextField(
                title: S.current.item_amount , hint: S.current.usd,
              ),
            ),
          ],
        ),
        sizedBoxHeight,
        Row(
          children: [
            Expanded(
              child: CustomButton(
                text: S.current.add_more_details,
                backgroundColor: Colors.transparent,
                textColor: Themes(context).theme.colors.body5,
              ),
            ),
            const SizedBox(width: 12,),
            Expanded(
              child: CustomButton(text: S.current.send_money,),
            ),
          ],
        ),
      ],
    );
  }
}