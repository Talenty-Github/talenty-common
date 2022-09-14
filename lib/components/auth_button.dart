import 'package:flutter/material.dart';
import 'package:talenty_common/fundamentals/colors.dart';
import 'package:talenty_common/components/context_menu.dart';
import 'package:talenty_common/components/icons.dart';

class TalentyAuthButton extends StatefulWidget {
  final VoidCallback onTapRegister;
  final VoidCallback onTapLogin;
  final Image? profilePicture;

  const TalentyAuthButton({
    required this.onTapRegister,
    required this.onTapLogin,
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
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 16),
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
          child: InkWell(
            onTap: () {
              setState(() {
                _authPressed = !_authPressed;
              });
              showDialog(
                  context: context,
                  barrierColor: Colors.white.withOpacity(0),
                  builder: (BuildContext context) {
                    return TalentyContextMenu(
                      options: [
                        ContextMenuOption(
                          text: 'Regístrate',
                          callback: widget.onTapRegister,
                        ),
                        ContextMenuOption(
                          text: 'Inicia sesión',
                          callback: widget.onTapLogin,
                        )
                      ],
                    );
                  }).then((_) {
                setState(() {
                  _authPressed = !_authPressed;
                });
              });
            },
            borderRadius: const BorderRadius.all(Radius.circular(24)),
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
    );
  }
}
