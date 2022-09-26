// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:talenty_common/components/icons.dart';
import 'package:talenty_common/fundamentals/colors.dart';
import 'package:talenty_common/fundamentals/gap_spaces.dart';

enum TalentyActionButtonDirection { left, right }

class TalentyActionButton extends StatefulWidget {
  bool disabled;
  VoidCallback onTap;
  TalentyActionButtonDirection direction;
  Color borderColor = TalentyColors.carbon200;

  TalentyActionButton.action({
    required this.onTap,
    required this.direction,
    this.disabled = false,
    super.key,
  }) {
    // Poner parámetros específicos
  }

  TalentyActionButton.calendar({
    required this.onTap,
    required this.direction,
    this.disabled = false,
    this.borderColor = TalentyColors.white,
    super.key,
  }) {
    // Parámetros específicos
  }

  @override
  State<TalentyActionButton> createState() => _TalentyActionButtonState();
}

class _TalentyActionButtonState extends State<TalentyActionButton> {
  final double borderRadius = 32.0;

  final Color backgroundColor = TalentyColors.white;

  final Color fontColor = TalentyColors.carbon800;

  final Color splashColor = TalentyColors.carbon50;

  bool hover = false;
  bool focus = false;

  @override
  Widget build(BuildContext context) {
    Widget inkWellContent = Container(
      decoration: BoxDecoration(
        // border: Border.all(
        //   color: hover || focus ? TalentyColors.carbon800 : widget.borderColor,
        //   width: 1,
        // ),
        color: widget.disabled ? TalentyColors.carbon200 : TalentyColors.white,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      width: 32,
      height: 32,
      padding: EdgeInsets.all(TalentyGapSpaces.level1),
      child: TalentyIcon(
          icon: widget.direction == TalentyActionButtonDirection.left
              ? TalentyIcons.navigation.chevronLeft
              : TalentyIcons.navigation.chevronRight,
          size: TalentyIconSize.small,
          color: widget.disabled
              ? TalentyColors.carbon600
              : TalentyColors.carbon800),
    );
    return widget.disabled
        ? inkWellContent
        : Material(
            borderRadius: BorderRadius.circular(borderRadius),
            child: Ink(
              decoration: BoxDecoration(
                border: Border.all(
                  color: hover || focus
                      ? TalentyColors.carbon800
                      : TalentyColors.carbon200,
                ),
                shape: BoxShape.circle,
              ),
              child: InkWell(
                // ? Animation?
                onHover: widget.disabled
                    ? null
                    : (value) {
                        setState(() {
                          hover = value;
                        });
                      },
                onFocusChange: widget.disabled
                    ? null
                    : (value) {
                        setState(() {
                          focus = value;
                        });
                      },
                hoverColor: backgroundColor,
                focusColor: backgroundColor,
                splashColor: splashColor,
                borderRadius: BorderRadius.circular(borderRadius),
                onTap: () {
                  widget.onTap();
                  hover = false;
                },
                child: inkWellContent,
              ),
            ),
          );
  }
}
