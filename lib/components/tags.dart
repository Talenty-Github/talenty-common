import 'package:flutter/material.dart';
import 'package:talenty_common/talenty_common.dart';

class TalentyTags extends StatelessWidget {
  final double? width;
  final double height;
  final Color color;
  final Color borderColor;
  final String text;
  final Color textColor;
  

  const TalentyTags({
    this.width,
    this.height = 24.0,
    this.color = TalentyColors.info100,
    this.borderColor = TalentyColors.info800,
    required this.text,
    this.textColor = TalentyColors.info800,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    const double horizontalPadding = 4.0;
    const double verticalPadding = 2.0;
    const double marginRight = 12.0;
    const double radius = 4.0;

    return Container(
      width: width,
      height: height,
      margin: const EdgeInsets.only(right: marginRight),
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: borderColor),
        borderRadius: const BorderRadius.all(Radius.circular(radius))
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
        child: Center(
          child: Text(
            text,
            style: TalentyTextStyles().bodyLargeNormal(
              color: textColor
            ),
          ),
        ),
      )
    );
  }
}