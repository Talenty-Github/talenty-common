import 'package:flutter/material.dart';
import 'package:talenty_common/components/icons.dart';
import 'package:talenty_common/fundamentals/colors.dart';
import 'package:talenty_common/fundamentals/text_styles.dart';

class TalentyDropDownButton<T> extends StatelessWidget {
  final List<T> items;
  final String? label;
  final String? placeholder;
  final bool isExpanded;
  final T? selectedValue;
  final void Function(T?) onChangedSelectedValue;
  final Widget Function(T) valueWidgetBuilder;

  const TalentyDropDownButton({
    required this.items,
    required this.onChangedSelectedValue,
    required this.valueWidgetBuilder,
    this.label,
    this.placeholder,
    this.selectedValue,
    this.isExpanded = true,
    super.key,
  });

  Widget _dropdownButton() {
    return DropdownButton<T>(
      value: selectedValue,
      hint: Text(
        placeholder ?? '',
        style: TalentyTextStyles().bodyLargeNormal(color: TalentyColors.carbon600),
      ),
      icon: TalentyIcon(
        icon: TalentyIcons.navigation.chevronDown, 
        color: TalentyColors.carbon600
      ),
      isExpanded: isExpanded,
      underline: Container(),
      items: items.map<DropdownMenuItem<T>>(
        (T value) => DropdownMenuItem<T>(
          value: value,
          child: valueWidgetBuilder(value),
        ),
      ).toList(),
      onChanged: onChangedSelectedValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label ?? '', style: TalentyTextStyles().bodySmallNormal(color: TalentyColors.carbon800)),
        const SizedBox(height: 8.0),
        Container(
          height: 48.0,
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(color: TalentyColors.carbon200),
          ),
          child: _dropdownButton(),
        ),
      ],
    );
  }
}