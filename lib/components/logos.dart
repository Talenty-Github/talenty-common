import 'package:flutter/material.dart';

class TalentyLogo extends StatelessWidget {
  final String logo;
  final double width;
  final double height;
  final Color? color;

  const TalentyLogo({required this.logo, required this.width, required this.height, this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      logo,
      width: width,
      height: height,
      color: color,
    );
  }
}

class TalentyLogos {
  static const String _logoPath = 'assets/logos';

  static const String imagotipoHorizontal = '$_logoPath/Imagotipo-horizontal.png';
  static const String logoCompuesto = '$_logoPath/Logo-compuesto.png';
  static const String talentyIcon3640 = '$_logoPath/talenty-icon-36-40.png';
  static const String talentyIcon7280 = '$_logoPath/talenty-icon-72-80.png';
  static const String celebrityLogo = '$_logoPath/celebrity-logo.png';
  static const String handLogo = '$_logoPath/hand-logo.png';
  static const String nequi = '$_logoPath/nequi.png';
  static const String bancolombia = '$_logoPath/bancolombia.png';
  static const String bancoBogota = '$_logoPath/banco-bogota.png';
  static const String creditCard = '$_logoPath/creditcard.png';
  static const String talentyLogo = '$_logoPath/talenty_logo.png';
  static const String toptyLogoWhite = '$_logoPath/topty_logo_white.png';
  static const String celebrityLogoWhite = '$_logoPath/celebrity_logo_white.png';
  static const String toptyWhite = '$_logoPath/toptyWhite.png';
  static const String toptyIconWhite = '$_logoPath/toptyIconWhite.png';
}
