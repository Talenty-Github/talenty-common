import 'package:flutter/material.dart';
import 'package:talenty_common/fundamentals/colors.dart';

class TalentyVerticalDivider extends StatelessWidget {
  final double width;
  final double height;

  const TalentyVerticalDivider({
    this.width = 1.0,
    this.height = 36.0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Center(
        child: Container(
          width: width,
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                color: TalentyColors.carbon200,
                width: width,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
