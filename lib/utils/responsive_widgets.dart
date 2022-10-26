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

double pageHorizontalPadding(
  BuildContext context, {
  double? overrideMobile,
  double? overrideTablet,
  double? overrideDesktop,
}) {
  return getValueForScreenType<double>(
    context: context,
    mobile: overrideMobile ?? TalentyDimension.mobilePadding,
    tablet: overrideTablet ?? TalentyDimension.tabletPadding,
    desktop: overrideDesktop ?? TalentyDimension.desktopPadding,
  );
}

double pageHorizontalPaddingWithMaxWidth(
  BuildContext context, {
  double? overrideMobile,
  double? overrideTablet,
  double? overrideDesktop,
}) {
  final double width = MediaQuery.of(context).size.width;

  return getValueForScreenType<double>(
    context: context,
    mobile: overrideMobile ?? TalentyDimension.mobilePadding,
    tablet: overrideTablet ?? TalentyDimension.tabletPadding,
    desktop: overrideDesktop ?? max(TalentyDimension.desktopPadding, (width - TalentyDimension.desktopMaxWidth) / 2),
  );
}

double pageInnerHorizontalPaddingWithMaxWidth(
  BuildContext context, {
  double? overrideMobile,
  double? overrideTablet,
  double? overrideDesktop,
  bool inner = false,
}) {
  final double width = MediaQuery.of(context).size.width;
  final bool isExtraLarge = width >= TalentyDimension.largeDesktopBreakpoint;

  if ((!isExtraLarge || !inner) && (isExtraLarge || inner)) {
    return getValueForScreenType<double>(
      context: context,
      mobile: overrideMobile ?? TalentyDimension.mobilePadding,
      tablet: overrideTablet ?? TalentyDimension.tabletPadding,
      desktop: overrideDesktop ?? max(TalentyDimension.desktopPadding, (width - TalentyDimension.desktopMaxWidth) / 2),
    );
  } else {
    return getValueForScreenType<double>(
      context: context,
      mobile: 0.0,
      tablet: 0.0,
      desktop: 0.0,
    );
  }
}
