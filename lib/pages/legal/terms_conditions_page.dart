import 'package:flutter/material.dart';
import 'package:talenty_common/widgets/topty_legal.dart';

class TermsConditionsPage extends StatelessWidget {
  const TermsConditionsPage({super.key});

  final String descriptionPath = 'assets/docs/legal/terms_conditions.md';

  @override
  Widget build(BuildContext context) {
    return TalentyLegal(
      title: 'Términos y Condiciones del uso de la plataforma Topty',
      descriptionPath: descriptionPath,
    );
  }
}
