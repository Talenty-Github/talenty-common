import 'package:flutter/material.dart';
import 'package:talenty_common/components/icons.dart';
import 'package:talenty_common/components/popupmenu.dart';
import 'package:talenty_common/fundamentals/colors.dart';
import 'package:talenty_common/fundamentals/gap_spaces.dart';

class TalentyAuthButton extends StatefulWidget {
  final Image? profilePicture;
  final List<TalentyPopupMenuItem> menuItems;

  const TalentyAuthButton({
    required this.menuItems,
    this.profilePicture,
    super.key,
  });

  @override
  State<TalentyAuthButton> createState() => _TalentyAuthButtonState();
}

class _TalentyAuthButtonState extends State<TalentyAuthButton> {
  bool _authPressed = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => setState(() {
              _authPressed = !_authPressed;
            }),
        child: TalentyPopupMenu(
          menuItems: widget.menuItems,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: TalentyGapSpaces.level3),
            child: Material(
              elevation: _authPressed ? 7 : 0,
              color: TalentyColors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: TalentyColors.carbon200,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(24)),
                ),
                height: 48,
                width: 96,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TalentyIcon(
                      icon: TalentyIcons.navigation.burgerMenu,
                      size: TalentyIconSize.medium,
                      color: TalentyColors.carbon600,
                    ),
                    const SizedBox(width: 6),
                    CircleAvatar(
                      radius: 16.0,
                      backgroundColor: TalentyColors.carbon600,
                      backgroundImage: widget.profilePicture?.image,
                      child: TalentyIcon(
                          icon: TalentyIcons.essentials.user,
                          size: TalentyIconSize.small,
                          color: TalentyColors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
