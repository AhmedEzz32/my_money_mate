import 'package:flutter/material.dart';
import '../transaction/title_text_field.dart';
import 'custom_button.dart';

class QuickInvoiceForms extends StatelessWidget {
  const QuickInvoiceForms({super.key});

  @override
  Widget build(BuildContext context) {
    const sizedBoxWidth = SizedBox(width: 16,);
    const sizedBoxHeight = SizedBox(height: 24,);
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Customer name', hint: 'Type customer name'
              ),
            ),
            sizedBoxWidth,            
            Expanded(
              child: TitleTextField(
                title: 'Customer email', hint: 'Type customer email',
              ),
            ),
          ],
        ),
        sizedBoxHeight,
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Item name', hint: 'Type item name'
              ),
            ),
            sizedBoxWidth,
            Expanded(
              child: TitleTextField(
                title: 'Item mount', hint: 'USD',
              ),
            ),
          ],
        ),
        sizedBoxHeight,
        Row(
          children: [
            Expanded(
              child: CustomButton(
                text: 'Add more details',
                backgroundColor: Colors.transparent,
                textColor: Color(0xff4db7f2),
              ),
            ),
            SizedBox(width: 12,),
            Expanded(
              child: CustomButton(text: 'Send money',),
            ),
          ],
        ),
      ],
    );
  }
}