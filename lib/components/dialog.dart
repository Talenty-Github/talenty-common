import 'package:flutter/material.dart';
import 'package:talenty_common/components/icons.dart';
import 'package:talenty_common/fundamentals/colors.dart';
import 'package:talenty_common/components/buttons.dart';
import 'package:talenty_common/fundamentals/error_codes.dart';
import 'package:talenty_common/fundamentals/text_styles.dart';

class ShowTalentyDialog {
  final VoidCallback? onTapSecondary;
  final VoidCallback? onTapPrimary;
  bool showCloseButton;
  bool dismissibleScreen;
  String? secondaryButtonText;
  String? primaryButtonText;

  final double horizontalPadding = 24.0;
  final double verticalPadding = 24.0;
  final double elevation = 4.0;
  final double width = 468.0;
  final double textGap = 24.0;

  ShowTalentyDialog({
    this.onTapPrimary,
    this.onTapSecondary,
    this.showCloseButton = true,
    this.dismissibleScreen = false,
    this.secondaryButtonText,
    this.primaryButtonText,
  }) {
    assert(
        (onTapPrimary != null && primaryButtonText != null) ||
            (onTapPrimary == null && primaryButtonText == null),
        'Most provide both a function and a text for the primary button or none');
    assert(
        (onTapSecondary != null && secondaryButtonText != null) ||
            (onTapSecondary == null && secondaryButtonText == null),
        'Most provide both a function and a text for the secondary button or none');
  }

  Future<dynamic> success({
    required BuildContext context,
    required String title,
    required String message,
  }) =>
      _dialogBase(
          context: context,
          icon: TalentyIcons.navigation.checkCircleFull,
          title: title,
          message: message);

  Future<dynamic> warning(
          {required BuildContext context,
          String? title,
          required String code}) =>
      _dialogBase(
          context: context,
          icon: TalentyIcons.navigation.alertTriangleFull,
          title: TalentyErrors.errorTitle(code),
          message: TalentyErrors.errorMessage(code),
          code: code);

  Future<dynamic> error(
          {required BuildContext context,
          String? title,
          required String code}) =>
      _dialogBase(
          context: context,
          icon: TalentyIcons.navigation.xCircleFull,
          title: TalentyErrors.errorTitle(code),
          message: TalentyErrors.errorMessage(code),
          code: code);

  Future<dynamic> info({
    required BuildContext context,
    required String title,
    required String message,
  }) =>
      _dialogBase(
          context: context,
          icon: TalentyIcons.navigation.alertCircleFull,
          title: title,
          message: message);

  Future<dynamic> custom({
    required BuildContext context,
    String? icon,
    required String title,
    required String message,
  }) =>
      _dialogBase(context: context, icon: icon, title: title, message: message);

  Future<dynamic> _dialogBase(
      {required BuildContext context,
      String? icon,
      required String title,
      String? code,
      required String message}) {
    return showDialog(
        context: context,
        barrierColor: TalentyColors.blueJeans900.withOpacity(0.9),
        barrierDismissible: (dismissibleScreen) ? true : false,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: TalentyColors.white,
            elevation: elevation,
            title: _header(context, icon, showCloseButton),
            contentPadding: EdgeInsets.symmetric(
                horizontal: horizontalPadding, vertical: verticalPadding),
            content: _content(title, message, code, width, textGap),
            actionsPadding: EdgeInsets.symmetric(
                horizontal: horizontalPadding, vertical: verticalPadding),
            actions: _actions(
              secondaryButtonText,
              onTapSecondary,
              primaryButtonText,
              onTapPrimary,
            ),
          );
        });
  }
}

Widget _header(BuildContext context, String? icon, bool? showClosedButton) {
  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        icon != null
            ? TalentyIcon(
                icon: icon,
                size: TalentyIconSize.medium,
              )
            : Container(),
        (showClosedButton == true)
            ? IconButton(
                hoverColor: TalentyColors.white.withOpacity(0),
                icon: TalentyIcon(
                  icon: TalentyIcons.navigation.x,
                  size: TalentyIconSize.medium,
                  color: TalentyColors.blueJeans800,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                })
            : Container(),
      ]);
}

Widget _content(
    String title, String message, String? code, double width, double textGap) {
  return SizedBox(
    width: width,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: TalentyTextStyles().subHeadingLargeNormal(
            color: TalentyColors.carbon900,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: textGap),
        Text('$message. ${(code == null) ? '' : '($code)'}',
            style: TalentyTextStyles().bodyLargeNormal(
              color: TalentyColors.carbon900,
            )),
      ],
    ),
  );
}

List<Widget> _actions(
  String? secondaryButtonText,
  VoidCallback? onTapSecondary,
  String? primaryButtonText,
  VoidCallback? onTapPrimary,
) {
  List<Widget> buttonList = [];

  if (secondaryButtonText != null) {
    buttonList.add(
      TalentyButton.secondary(
          text: secondaryButtonText.toString(),
          mode: TalentyButtonMode.blueJeans,
          onTap: onTapSecondary!),
    );
  }

  buttonList.add(const SizedBox(width: 10.0));

  if (primaryButtonText != null) {
    buttonList.add(
      TalentyButton.primary(
          text: primaryButtonText.toString(),
          mode: TalentyButtonMode.blueJeans,
          onTap: onTapPrimary!),
    );
  }
  return buttonList;
}
