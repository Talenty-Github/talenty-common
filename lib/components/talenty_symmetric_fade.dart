import 'package:flutter/material.dart';

class SymmetricFade extends StatelessWidget {
  final Widget child;
  final bool leftScrollable;
  final bool rightScrollable;
  const SymmetricFade({
    required this.child,
    required this.leftScrollable,
    required this.rightScrollable,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect rect) {
        return LinearGradient(
          colors: rightScrollable
              ? [
                  Colors.white.withOpacity(0.0),
                  Colors.white,
                ]
              : [
                  Colors.white,
                ],
          stops: rightScrollable
              ? [
                  0.0,
                  0.03,
                ]
              : [0],
          tileMode: TileMode.mirror,
        ).createShader(rect);
      },
      child: ShaderMask(
        shaderCallback: (Rect rect) {
          return LinearGradient(
            colors: leftScrollable
                ? [
                    Colors.white,
                    Colors.white.withOpacity(0.0),
                  ]
                : [
                    Colors.white,
                  ],
            stops: leftScrollable
                ? [
                    0.97,
                    1,
                  ]
                : [0],
            tileMode: TileMode.mirror,
          ).createShader(rect);
        },
        child: child,
      ),
    );
  }
}
