import 'package:flutter/material.dart';
import 'package:talenty_common/widgets/topty_legal.dart';

class CookiePolicyPage extends StatelessWidget {
  const CookiePolicyPage({Key? key}) : super(key: key);

  final String descriptionPath = 'assets/docs/legal/cookie_policy.txt';

  @override
  Widget build(BuildContext context) {
    return TalentyLegal(
      title: 'Política de Cookies',
      descriptionPath: descriptionPath,
    );
  }
}
