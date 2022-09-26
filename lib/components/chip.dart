import 'package:flutter/material.dart';
import 'package:talenty_common/fundamentals/colors.dart';
import 'package:talenty_common/fundamentals/gap_spaces.dart';
import 'package:talenty_common/fundamentals/text_styles.dart';

class TalentyChip extends StatefulWidget {
  final String text;
  final VoidCallback onTap;
  final bool tapped;

  const TalentyChip(
      {required this.text,
      required this.onTap,
      required this.tapped,
      super.key});

  @override
  State<TalentyChip> createState() => _TalentyChipState();
}

class _TalentyChipState extends State<TalentyChip> {
  bool hover = false;
  double borderRadius = 24.0;

  void tap() {
    widget.onTap();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Ink(
        decoration: BoxDecoration(
          border: Border.all(
            color: widget.tapped
                ? TalentyColors.carbon900
                : hover
                    ? TalentyColors.carbon800
                    : TalentyColors.carbon200,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: InkWell(
          onHover: (value) {
            setState(() {
              hover = value;
            });
          },
          onTap: tap,
          borderRadius: BorderRadius.circular(borderRadius),
          child: Container(
            padding:
                EdgeInsets.symmetric(
                  vertical: TalentyGapSpaces.level2, 
                  horizontal: TalentyGapSpaces.level3
                ),
            height: 72.0,
            decoration: BoxDecoration(
              color:
                  widget.tapped ? TalentyColors.carbon900 : TalentyColors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(borderRadius),
              ),
            ),
            child: Center(
              child: Text(
                widget.text,
                style: TalentyTextStyles().bodySmallBold(
                    color: widget.tapped
                        ? TalentyColors.white
                        : TalentyColors.carbon900),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
