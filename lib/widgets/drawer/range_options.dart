import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utils/translation/generated/l10n.dart';
import '../../utils/theme/themes.dart';

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
  late List<String> dropdownOptions;
  late String dropdownValue;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    dropdownOptions = [
      S.current.daily,
      S.current.weekly,
      S.current.monthly,
      S.current.yearly,
    ];
    dropdownValue = S.current.daily;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(8),
      decoration: ShapeDecoration(
        color: Themes(context).theme.colors.background,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Themes(context).theme.colors.body2
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
      ),
      child: Row(
        children: [
          DropdownButton<String>(
            value: dropdownValue,
            icon: Icon(
              Icons.arrow_drop_down_rounded,
              size: 24,
              color: Themes(context).theme.colors.info4,
            ),
            iconSize: 24,
            elevation: 16,
            style: Themes(context).theme.info4.body2Bold,
            underline: Container(
              height: 0,
              color: Colors.transparent,
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: dropdownOptions.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: Themes(context).theme.secondry.body3,
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
