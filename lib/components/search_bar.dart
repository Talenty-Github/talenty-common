import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:talenty_common/components/icons.dart';
import 'package:talenty_common/fundamentals/colors.dart';
import 'package:talenty_common/fundamentals/gap_spaces.dart';
import 'package:talenty_common/fundamentals/text_styles.dart';

class TalentySearchBar extends StatelessWidget {
  const TalentySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    const double borderRadius = 24.0;

    return Container(
      constraints: BoxConstraints(
        maxWidth: getValueForScreenType<double>(context: context, mobile: 406.0 * 1.5, tablet: 406.0, desktop: 406.0),
      ),
      height: 48,
      padding: EdgeInsets.symmetric(horizontal: TalentyGapSpaces.level4),
      decoration: BoxDecoration(
        color: TalentyColors.white,
        border: Border.all(color: TalentyColors.carbon200),
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: const [BoxShadow(color: TalentyColors.carbon200, blurRadius: 4, offset: Offset(0, 4))],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: '¿Qué talento necesitas?',
          hintStyle: TalentyTextStyles().bodyLargeNormal(
            color: TalentyColors.carbon600,
          ),
          border: InputBorder.none,
          suffixIconConstraints: const BoxConstraints(minHeight: 24, minWidth: 24, maxHeight: 24, maxWidth: 24),
          suffixIcon: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              color: TalentyColors.blueJeans500,
            ),
            padding: EdgeInsets.all(TalentyGapSpaces.level1),
            child: SizedBox(
              child: TalentyIcon(
                  icon: TalentyIcons.actions.search, size: TalentyIconSize.small, color: TalentyColors.white),
            ),
          ),
        ),
      ),
    );
  }
}
