import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TalentyLogo extends StatelessWidget {
  final String logo;
  final double width;
  final double height;
  final Color? color;

  const TalentyLogo({
    required this.logo,
    required this.width,
    required this.height,
    this.color,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      logo,
      width: width,
      height: height,
      color: color,
    );
  }
}

class TalentyLogos {
  static const String _logoPath = 'assets/logos';

  static const String imagotipoHorizontal = '$_logoPath/Imagotipo-horizontal.svg';
  static const String logoCompuesto = '$_logoPath/Logo-compuesto.svg';
  static const String talentyIcon3640 = '$_logoPath/talenty-icon-36-40.svg';
  static const String talentyIcon7280 = '$_logoPath/talenty-icon-72-80.svg';
}
