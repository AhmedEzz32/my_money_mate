import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utils/styles.dart';
import 'package:responsive_adaptive_app/utils/translation/generated/l10n.dart';

class RangeOptions extends StatefulWidget {
  final String text;
  const RangeOptions({
    super.key, 
    required this.text,
  });

  @override
  State<RangeOptions> createState() => _RangeOptionsState();
}

class _RangeOptionsState extends State<RangeOptions> {
  String dropdownValue = 'Daily';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(8),
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Color(0xfff1f1f1),
          ),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
      child: Row(
        children: [
          DropdownButton<String>(
            value: dropdownValue,
            icon: const Icon(
              Icons.arrow_drop_down_rounded,
              size: 24,
              color: Color(0xff064061),
            ),
            iconSize: 24,
            elevation: 16,
            style: AppStyles.styleSemiBold14(context),
            underline: Container(
              height: 0,
              color: Colors.transparent,
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <String>[
              S.current.daily, 
              S.current.weekly, 
              S.current.monthly, 
              S.current.yearly,
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
