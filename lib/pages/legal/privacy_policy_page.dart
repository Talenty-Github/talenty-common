import 'package:flutter/material.dart';
import 'package:talenty_common/widgets/topty_legal.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({Key? key}) : super(key: key);

  final String descriptionPath = 'assets/docs/legal/privacy_policy.txt';

  @override
  Widget build(BuildContext context) {
    return TalentyLegal(
      title: 'Política de Tratamiento de Datos Personales (Política de Privacidad)',
      descriptionPath: descriptionPath,
    );
  }
}
