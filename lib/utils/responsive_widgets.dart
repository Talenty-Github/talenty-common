import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

EdgeInsets pagePadding(BuildContext context) {
  return ResponsiveValue(
    context,
    defaultValue: const EdgeInsets.symmetric(
      horizontal: 56,
    ),
    valueWhen: [
      const Condition.smallerThan(
          name: DESKTOP, value: EdgeInsets.symmetric(horizontal: 60)),
      const Condition.smallerThan(
          name: TABLET, value: EdgeInsets.symmetric(horizontal: 16)),
    ],
  ).value!;
}

double cardCarouselDistance(BuildContext context) {
  return ResponsiveValue(
    context,
    defaultValue: 32.0,
    valueWhen: [
      const Condition.smallerThan(name: TABLET, value: 16.0),
      const Condition.smallerThan(name: DESKTOP, value: 16.0),
    ],
  ).value!;
}

double sectionWidth(BuildContext context) {
  return min(MediaQuery.of(context).size.width, 1168);
}

double sectionPadding(BuildContext context) {
  return (MediaQuery.of(context).size.width - sectionWidth(context)) / 2;
}
