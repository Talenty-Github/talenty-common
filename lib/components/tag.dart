import 'package:flutter/material.dart';
import 'package:talenty_common/fundamentals/colors.dart';
import 'package:talenty_common/fundamentals/text_styles.dart';

class TalentyTag extends StatelessWidget {
  final String text;

  const TalentyTag({ required this.text, super.key });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12.0),
      decoration: BoxDecoration(
        color: TalentyColors.info100,
        border: Border.all(color: TalentyColors.info800),
        borderRadius: const BorderRadius.all(Radius.circular(4.0))
      ),
      child: Padding(padding: const EdgeInsets.all(4.0),
        child: Text(text, style: TalentyTextStyles().bodyLargeNormal(color: TalentyColors.info800)),
      )
    );
  }
}