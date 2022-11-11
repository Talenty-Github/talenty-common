import 'package:flutter/material.dart';
import 'package:talenty_common/fundamentals/colors.dart';

const String fontFamily = 'Roboto';

class TalentyTextStyles {
  TextStyle headingExtraLarge({
    Color color = TalentyColors.carbon900,
    FontWeight fontWeight = FontWeight.w500,
    bool underline = false,
    double? height,
  }) => TextStyle(
        color: color,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        fontSize: 36.0,
        height: height,
        decoration: underline ? TextDecoration.underline : null,
      );

  TextStyle headingLarge({
    Color color = TalentyColors.carbon900,
    FontWeight fontWeight = FontWeight.w500,
    bool underline = false,
    double? height,
  }) =>
      TextStyle(
        color: color,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        fontSize: 32.0,
        height: height,
        decoration: underline ? TextDecoration.underline : null,
      );

  TextStyle headingSmall({
    Color color = TalentyColors.carbon900,
    FontWeight fontWeight = FontWeight.w500,
    bool underline = false,
    double? height,
  }) =>
      TextStyle(
        color: color,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        fontSize: 24.0,
        height: height,
        decoration: underline ? TextDecoration.underline : null,
      );

  TextStyle subHeadingLargeBold({
    Color color = TalentyColors.carbon800,
    FontWeight fontWeight = FontWeight.w500,
    bool underline = false,
    double? height,
  }) =>
      TextStyle(
        color: color,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        fontSize: 20.0,
        height: height,
        decoration: underline ? TextDecoration.underline : null,
      );

  TextStyle subHeadingLargeNormal({
    Color color = TalentyColors.carbon800,
    FontWeight fontWeight = FontWeight.w400,
    bool underline = false,
    double? height,
  }) =>
      TextStyle(
        color: color,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        fontSize: 20.0,
        height: height,
        decoration: underline ? TextDecoration.underline : null,
      );

  TextStyle subHeadingSmallBold({
    Color color = TalentyColors.carbon800,
    FontWeight fontWeight = FontWeight.w500,
    bool underline = false,
    double? height,
  }) =>
      TextStyle(
        color: color,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        fontSize: 18.0,
        height: height,
        decoration: underline ? TextDecoration.underline : null,
      );

  TextStyle subHeadingSmallNormal({
    Color color = TalentyColors.carbon800,
    FontWeight fontWeight = FontWeight.w400,
    bool underline = false,
    double? height,
  }) =>
      TextStyle(
        color: color,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        fontSize: 18.0,
        height: height,
        decoration: underline ? TextDecoration.underline : null,
      );

  TextStyle bodyLargeBold({
    Color color = TalentyColors.carbon800,
    FontWeight fontWeight = FontWeight.w500,
    bool underline = false,
    double? height,
  }) =>
      TextStyle(
        color: color,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        fontSize: 16.0,
        height: height,
        decoration: underline ? TextDecoration.underline : null,
      );

  TextStyle bodyLargeNormal({
    Color color = TalentyColors.carbon800,
    FontWeight fontWeight = FontWeight.w400,
    bool underline = false,
    double? height,
  }) =>
      TextStyle(
        color: color,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        fontSize: 16.0,
        height: height,
        decoration: underline ? TextDecoration.underline : null,
      );

  TextStyle bodySmallBold({
    Color color = TalentyColors.carbon800,
    FontWeight fontWeight = FontWeight.w500,
    bool underline = false,
    double? height,
  }) =>
      TextStyle(
        color: color,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        fontSize: 14.0,
        height: height,
        decoration: underline ? TextDecoration.underline : null,
      );

  TextStyle bodySmallNormal({
    Color color = TalentyColors.carbon800,
    FontWeight fontWeight = FontWeight.w400,
    bool underline = false,
    double? height,
  }) =>
      TextStyle(
        color: color,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        fontSize: 14.0,
        height: height,
        decoration: underline ? TextDecoration.underline : null,
      );

  TextStyle captionLargeBold({
    Color color = TalentyColors.carbon800,
    bool underline = false,
    FontWeight fontWeight = FontWeight.w500,
    double? height,
  }) =>
      TextStyle(
        color: color,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        fontSize: 12.0,
        height: height,
        decoration: underline ? TextDecoration.underline : null,
      );

  TextStyle captionLargeNormal({
    Color color = TalentyColors.carbon800,
    bool underline = false,
    FontWeight fontWeight = FontWeight.w400,
    double? height,
  }) =>
      TextStyle(
        color: color,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        fontSize: 12.0,
        height: height,
        decoration: underline ? TextDecoration.underline : null,
      );

  TextStyle captionSmall({
    Color color = TalentyColors.carbon800,
    bool underline = false,
    FontWeight fontWeight = FontWeight.w500,
    double? height,
  }) =>
      TextStyle(
        color: color,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        fontSize: 10.0,
        height: height,
        decoration: underline ? TextDecoration.underline : null,
      );
}
