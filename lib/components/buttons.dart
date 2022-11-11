// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:talenty_common/fundamentals/colors.dart';
import 'package:talenty_common/fundamentals/gap_spaces.dart';
import 'package:talenty_common/fundamentals/text_styles.dart';

enum TalentyButtonMode { carbon, blueJeans }

enum TalentyButtonType { primary, secondary, tertiary }

enum TalentyButtonIconPosition { left, right }

ButtonStyle talentyTextButtonStyle = ButtonStyle(
  padding: MaterialStateProperty.resolveWith((states) => EdgeInsets.zero),
  overlayColor: MaterialStateColor.resolveWith(
    (states) => Colors.transparent,
  ),
);

class TalentyButton extends StatefulWidget {
  double horizontalPadding = TalentyGapSpaces.level3;
  bool underline = false;
  bool noBorder = false;
  String text = '';
  final double borderRadius = 8.0;
  double verticalPadding = TalentyGapSpaces.level2;
  bool disabled;
  late Color backgroundColor;
  late Color fontColor;
  late Color borderColor;
  late Color hoverColor;
  late Color focusColor;
  late double hoverOpacity;
  late TalentyButtonMode mode;
  late Widget? icon;
  late TalentyButtonIconPosition? iconPosition;
  late VoidCallback onTap;
  late TalentyButtonType buttonType;
  late MainAxisSize mainAxisSize;
  late MainAxisAlignment mainAxisAlignment;

  TalentyButton.primary({
    required this.text,
    required this.onTap,
    this.mode = TalentyButtonMode.carbon,
    this.mainAxisSize = MainAxisSize.min,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.icon,
    this.iconPosition,
    this.disabled = false,
    this.buttonType = TalentyButtonType.primary,
    super.key,
  }) {
    fontColor = TalentyColors.white;
    if (mode == TalentyButtonMode.carbon) {
      backgroundColor = TalentyColors.carbon900;
    } else if (mode == TalentyButtonMode.blueJeans) {
      backgroundColor = TalentyColors.blueJeans800;
    }
    if (disabled) {
      backgroundColor = TalentyColors.carbon200;
      fontColor = TalentyColors.carbon400;
    }
    borderColor = TalentyColors.transparent;
    hoverColor = mode == TalentyButtonMode.blueJeans
        ? TalentyColors.blueJeans900
        : TalentyColors.carbon900;
    hoverOpacity = 1;
    focusColor = TalentyColors.transparent;
    assert(
        icon == null && iconPosition == null ||
            icon != null && iconPosition != null,
        'icon and iconPosition must both be present or none');
  }

  TalentyButton.secondary({
    required this.text,
    required this.onTap,
    this.backgroundColor = TalentyColors.white,
    this.mode = TalentyButtonMode.carbon,
    this.mainAxisSize = MainAxisSize.min,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.icon,
    this.iconPosition,
    this.disabled = false,
    this.buttonType = TalentyButtonType.secondary,
    this.noBorder = false,
    super.key,
  }) {
    backgroundColor = TalentyColors.white;
    if (mode == TalentyButtonMode.carbon) {
      fontColor = TalentyColors.carbon900;
    } else if (mode == TalentyButtonMode.blueJeans) {
      fontColor = TalentyColors.blueJeans800;
    }
    if (disabled) {
      fontColor = TalentyColors.carbon400;
      backgroundColor = TalentyColors.carbon200;
    }
    borderColor = fontColor;
    hoverColor = mode == TalentyButtonMode.blueJeans
        ? TalentyColors.blueJeans500
        : TalentyColors.carbon400;
    hoverOpacity = 0.15;
    focusColor = TalentyColors.transparent;
    assert(
        icon == null && iconPosition == null ||
            icon != null && iconPosition != null,
        'icon and iconPosition must both be present or none');
  }

  TalentyButton.tertiary({
    required this.text,
    required this.onTap,
    this.mode = TalentyButtonMode.carbon,
    this.icon,
    this.iconPosition,
    this.backgroundColor = TalentyColors.white,
    this.disabled = false,
    this.buttonType = TalentyButtonType.tertiary,
    super.key,
  }) {
    mainAxisSize = MainAxisSize.min;
    mainAxisAlignment = MainAxisAlignment.start;
    horizontalPadding = 0.0; // TalentyGapSpaces.level2
    underline = true;
    fontColor = disabled ? TalentyColors.carbon400 : TalentyColors.carbon900;
    borderColor = TalentyColors.transparent;
    hoverColor = TalentyColors.carbon200;
    hoverOpacity = 1.0;
    focusColor = TalentyColors.carbon200;
    assert(
        icon == null && iconPosition == null ||
            icon != null && iconPosition != null,
        'icon and iconPosition must both be present or none');
  }

  @override
  State<TalentyButton> createState() => _TalentyButtonState();
}

class _TalentyButtonState extends State<TalentyButton> {
  // bool hover = false;
  bool focus = false;

  @override
  Widget build(BuildContext context) {
    List<Widget> rowElements = [];
    if (widget.iconPosition == TalentyButtonIconPosition.left) {
      rowElements.addAll([widget.icon!, SizedBox(width: TalentyGapSpaces.level2)]);
    }
    rowElements.add(Text(
      widget.text,
      style: TalentyTextStyles().bodySmallBold(
        fontWeight: FontWeight.w500,
        color: widget.fontColor,
        underline: widget.underline,
      ),
    ));
    if (widget.iconPosition == TalentyButtonIconPosition.right) {
      rowElements.addAll([SizedBox(width: TalentyGapSpaces.level2), widget.icon!]);
    }
    Widget inkWellContent = Ink(
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        border: widget.noBorder
            ? null
            : Border.all(
                color: widget.borderColor,
                width: focus && widget.buttonType == TalentyButtonType.secondary
                    ? 1.0 // ?! Fixme: Should be 2.0 but it breaks dimensions in UI
                    : 1.0),
        borderRadius: BorderRadius.circular(widget.borderRadius),
      ),
      padding: EdgeInsets.symmetric(
        vertical: widget.verticalPadding,
        horizontal: widget.horizontalPadding,
      ),
      child: Row(
        mainAxisSize: widget.mainAxisSize,
        mainAxisAlignment: widget.mainAxisAlignment,
        children: rowElements,
      ),
    );
    return widget.disabled
        ? Material(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            child: inkWellContent,
          )
        : Material(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            child: InkWell(
              borderRadius: BorderRadius.circular(widget.borderRadius),
              onTap: widget.onTap,
              onFocusChange: (value) {
                setState(() {
                  focus = !focus;
                });
              },
              focusColor: widget.focusColor,
              hoverColor: widget.hoverColor.withOpacity(
                  widget.hoverOpacity), // !? Fixme: This was set by guessing
              child: inkWellContent,
            ),
          );
  }
}
