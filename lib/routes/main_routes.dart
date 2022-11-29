import 'package:beamer/beamer.dart';
import 'package:flutter/cupertino.dart';
import 'package:talenty_common/pages/legal/cookie_policy_page.dart';
import 'package:talenty_common/pages/legal/privacy_policy_page.dart';
import 'package:talenty_common/pages/legal/terms_conditions_page.dart';

class MainRouteParams {
  static const String talentProviderId = 'talentProviderId';
}

class MainRoutes {
  MainRoutes._();
  static const String termsConditions = '/legal/terms-conditions';
  static const String privacyPolicy = '/legal/privacy-policy';
  static const String cookiesPolicy = '/legal/cookies-policy';
}

final mainRouterDelegate = BeamerDelegate(
  setBrowserTabTitle: false,
  transitionDelegate: const NoAnimationTransitionDelegate(),
  locationBuilder: RoutesLocationBuilder(
    builder: (context, widget) {
      return Builder(key: Key(context.currentBeamLocation.state.routeInformation.location!), builder: (_) => widget);
    },
    routes: {
      MainRoutes.termsConditions: (context, state, data) => const TermsConditionsPage(),
      MainRoutes.privacyPolicy: (context, state, data) => const PrivacyPolicyPage(),
      MainRoutes.cookiesPolicy: (context, state, data) => const CookiePolicyPage(),
    },
  ),
);
