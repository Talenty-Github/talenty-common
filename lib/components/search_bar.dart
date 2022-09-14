import 'package:flutter/material.dart';
import 'package:talenty_common/fundamentals/colors.dart';
import 'package:talenty_common/components/icons.dart';
import 'package:talenty_common/fundamentals/text_styles.dart';

class TalentySearchBar extends StatelessWidget {
  const TalentySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 405,
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      decoration: BoxDecoration(
        color: TalentyColors.white,
        border: Border.all(color: TalentyColors.carbon200),
        borderRadius: BorderRadius.circular(24.0),
        boxShadow: const [
          BoxShadow(
              color: TalentyColors.carbon200,
              blurRadius: 4,
              offset: Offset(0, 4))
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: '¿Qué talento necesitas?',
          hintStyle: TalentyTextStyles().bodyLargeNormal(
            color: TalentyColors.carbon600,
          ),
          border: InputBorder.none,
          suffixIconConstraints: const BoxConstraints(
              minHeight: 24, minWidth: 24, maxHeight: 24, maxWidth: 24),
          suffixIcon: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              color: TalentyColors.blueJeans500,
            ),
            padding: const EdgeInsets.all(4.0),
            child: SizedBox(
              child: TalentyIcon(
                  icon: TalentyIcons.actions.search,
                  size: TalentyIconSize.small,
                  color: TalentyColors.white),
            ),
          ),
        ),
      ),
    );
  }
}
