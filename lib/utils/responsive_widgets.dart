import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:talenty_common/fundamentals/dimensions.dart';

EdgeInsets pagePadding(BuildContext context) {
  return EdgeInsets.symmetric(
    horizontal: getValueForScreenType<double>(context: context, mobile: 16.0, tablet: 60.0, desktop: 56.0),
  );
}

double cardCarouselDistance(BuildContext context) {
  return getValueForScreenType<double>(context: context, mobile: 16.0, tablet: 16.0, desktop: 32.0);
}

double sectionWidth(BuildContext context) {
  return min(MediaQuery.of(context).size.width, 1168);
}

double sectionPadding(BuildContext context) {
  return (MediaQuery.of(context).size.width - sectionWidth(context)) / 2;
}

double pageHorizontalPadding(BuildContext context) {
  return getValueForScreenType<double>(
    context: context,
    mobile: TalentyDimension.mobilePadding,
    tablet: TalentyDimension.tabletPadding,
    desktop: TalentyDimension.desktopPadding,
  );
}

double pageHorizontalPaddingWithMaxWidth(BuildContext context) {
  final double width = MediaQuery.of(context).size.width;

  return getValueForScreenType<double>(
    context: context,
    mobile: TalentyDimension.mobilePadding,
    tablet: TalentyDimension.tabletPadding,
    desktop: max(TalentyDimension.desktopPadding, (width - TalentyDimension.desktopMaxWidth) / 2),
  );
}
