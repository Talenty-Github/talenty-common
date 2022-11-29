import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:talenty_common/routes/main_routes.dart';
import 'package:talenty_common/talenty_common.dart';
import 'package:talenty_common/utils/social_network_helper.dart';
import 'package:url_launcher/url_launcher.dart';

class TalentyFooter extends StatefulWidget {
  const TalentyFooter({super.key});

  @override
  State<TalentyFooter> createState() => _TalentyFooterState();
}

class _TalentyFooterState extends State<TalentyFooter> {
  final String phoneNumber = '+57 301 5776520';
  final SizedBox sizeBoxHeight = SizedBox(height: TalentyGapSpaces.level2);
  final SizedBox sizeBoxHeight2 = SizedBox(height: TalentyGapSpaces.level4);
  final SizedBox sizeBoxSocial = SizedBox(width: TalentyGapSpaces.level3);
  final TextStyle textTitlteStyle = TalentyTextStyles().bodyLargeBold(color: TalentyColors.carbon900);
  final TextStyle textSubtitleStyle = TalentyTextStyles().bodyLargeNormal(color: TalentyColors.carbon900);

  late TextStyle textBodyStyle = TalentyTextStyles().bodyLargeNormal();
  late TextStyle textBodyStyleEmail = TalentyTextStyles().bodyLargeNormal();

  final TextStyle textLegalStyle = TalentyTextStyles().bodyLargeBold();

  final Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'ayuda@talenty.com.co',
  );

  Future<void> _launchUrl(Uri url) async {
    if (!await (launchUrl(url))) {
      throw 'Could not launch $url';
    }
  }

  Widget _textList(BuildContext context, List<Widget> listTtext) {
    return Padding(
      padding: EdgeInsets.only(
          bottom: getValueForScreenType<double>(
        context: context,
        mobile: TalentyGapSpaces.level4,
        tablet: TalentyGapSpaces.level4,
        desktop: 0.0,
      )),
      child: Column(
          crossAxisAlignment: getValueForScreenType<CrossAxisAlignment>(
            context: context,
            mobile: CrossAxisAlignment.center,
            tablet: CrossAxisAlignment.center,
            desktop: CrossAxisAlignment.start,
          ),
          children: listTtext),
    );
  }

  Widget _supportText(BuildContext context) {

    return _textList(context, [
      Text('Soporte', style: textTitlteStyle),
      sizeBoxHeight,
      InkWell(
        onTap: () {_launchUrl(emailLaunchUri);},
        onHover: (isHover) {
          setState(() {
            textBodyStyleEmail = TalentyTextStyles().bodyLargeNormal(underline: isHover ? true : false);
          });
        },
        child: Text(
          'Correo: ayuda@talenty.com.co', 
          style: textBodyStyleEmail
        ),
      )
    ]);
  }

  Widget _sitesText(BuildContext context) {
    return _textList(
      context,
      [
        Text('Sedes', style: textTitlteStyle),
        sizeBoxHeight,
        Text('Bogotá, Rosales:', style: textSubtitleStyle),
        sizeBoxHeight,
        Text('Cr 5 a No. 72-76 Ofi 105\nTeléfono: $phoneNumber', style: textBodyStyle),
        sizeBoxHeight,
        Text('Medellín:', style: textSubtitleStyle),
        sizeBoxHeight,
        Text('Próximamente', style: textBodyStyle)
      ],
    );
  }

  Widget _sitesText2(BuildContext context) {
    return _textList(
      context,
      [
        const Text(''),
        Text('Miami, Florida:', style: textBodyStyle),
        sizeBoxHeight,
        Text('8242 NW 107th CT Doral, FL 33178\nTeléfono: +1 (786)7669423', style: textBodyStyle)
      ],
    );
  }

  Widget _aboutUsText(BuildContext context) {
    return _textList(
      context,
      [
        Text('Sobre Talenty', style: textTitlteStyle),
        sizeBoxHeight,
        InkWell(
          // onTap: () {}, Todo: navigate to the page
          child: Text('Sobre nosotros', style: textBodyStyle),
        ),
        sizeBoxHeight,
        InkWell(
          // onTap: () {}, Todo: navigate to the page,
          child: Text('Conviértete en un Talento', style: textBodyStyle),
        ),
        sizeBoxHeight,
        InkWell(
          // onTap: () {}, Todo: navigate to the page,
          child: Text('Regístrate como Empresa', style: textBodyStyle),
        ),
        sizeBoxHeight,
        InkWell(
          // onTap: () {}, Todo: navigate to the page,
          child: Text('Regístrate como Cliente', style: textBodyStyle),
        ),
      ],
    );
  }

  Widget _footerInfo(BuildContext context) {
    final Widget mobileView = Column(
      children: [
        _supportText(context),
        _sitesText(context),
        _sitesText2(context),
        _aboutUsText(context),
      ],
    );

    final Widget desktopView = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _supportText(context),
        _sitesText(context),
        _sitesText2(context),
        _aboutUsText(context),
      ],
    );

    return Padding(
        padding: EdgeInsets.only(
            top: getValueForScreenType<double>(
                context: context,
                mobile: TalentyGapSpaces.level4,
                tablet: TalentyGapSpaces.level4,
                desktop: TalentyGapSpaces.level6)),
        child: ScreenTypeLayout.builder(
          mobile: (BuildContext context) => mobileView,
          tablet: (BuildContext context) => mobileView,
          desktop: (BuildContext context) => desktopView,
        ));
  }

  List<Widget> _legalLinks(BuildContext context) {
    final dividerMobile = getValueForScreenType<Widget>(
      context: context,
      mobile: Container(),
      tablet: Container(),
      desktop: const TalentyVerticalDivider(),
    );

    final heightMobile = getValueForScreenType<Widget>(
      context: context,
      mobile: sizeBoxHeight2,
      tablet: sizeBoxHeight2,
      desktop: Container(),
    );

    return [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TalentyLogo(
            logo: TalentyLogos.talentyIcon7280,
            width: 36.0,
            height: 40.0
          ),
          SizedBox(width: TalentyGapSpaces.level3),
          Text('Talenty S.A.S', style: textLegalStyle),
        ],
      ),
      dividerMobile,
      heightMobile,
      InkWell(
        onTap: () => Beamer.of(context).beamToNamed(MainRoutes.termsConditions),
        child: Text('Términos y Condiciones', style: textLegalStyle),
      ),
      dividerMobile,
      heightMobile,
      InkWell(
        onTap: () => Beamer.of(context).beamToNamed(MainRoutes.privacyPolicy),
        child: Text('Políticas de privacidad', style: textLegalStyle),
      ),
      dividerMobile,
      heightMobile,
      InkWell(
        onTap: () => Beamer.of(context).beamToNamed(MainRoutes.cookiesPolicy),
        child: Text('Política de Cookies', style: textLegalStyle),
      ),
    ];
  }

  Widget _legalMobileView(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: _legalLinks(context));
  }

  Widget _legalDesktopView(BuildContext context) {
    return Expanded(
        flex: 3, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: _legalLinks(context)));
  }

  Widget _legal(BuildContext context) {
    return getValueForScreenType<bool>(
      context: context,
      mobile: true,
      tablet: true,
      desktop: false,
    )
        ? _legalMobileView(context)
        : _legalDesktopView(context);
  }

  List<Widget> _socialWidget() {
    return [
      IconButton(
        onPressed: () => SocialMediaHelper.launchSocialUrl(SocialNetwork.tiktok),
        icon: TalentyIcon(icon: TalentyIcons.social.tikTok, size: TalentyIconSize.medium),
      ),
      sizeBoxSocial,
      IconButton(
        onPressed: () => SocialMediaHelper.launchSocialUrl(SocialNetwork.instagram),
        icon: TalentyIcon(icon: TalentyIcons.social.instagram, size: TalentyIconSize.medium),
      ),
      sizeBoxSocial,
      IconButton(
        onPressed: () => SocialMediaHelper.launchSocialUrl(SocialNetwork.facebook),
        icon: TalentyIcon(icon: TalentyIcons.social.facebook, size: TalentyIconSize.medium),
      ),
      sizeBoxSocial,
      IconButton(
        onPressed: () => SocialMediaHelper.launchSocialUrl(SocialNetwork.youtube),
        icon: TalentyIcon(icon: TalentyIcons.social.youtube, size: TalentyIconSize.medium),
      )
    ];
  }

  Widget _socialMobileView(BuildContext context) {
    return Row(
        mainAxisAlignment: getValueForScreenType<MainAxisAlignment>(
          context: context,
          mobile: MainAxisAlignment.center,
          tablet: MainAxisAlignment.center,
          desktop: MainAxisAlignment.end,
        ),
        children: _socialWidget());
  }

  Widget _socialDesktopView() {
    return Expanded(child: Row(mainAxisAlignment: MainAxisAlignment.end, children: _socialWidget()));
  }

  Widget _socialNetworks(BuildContext context) {
    return getValueForScreenType<bool>(
      context: context,
      mobile: true,
      tablet: true,
      desktop: false,
    )
        ? _socialMobileView(context)
        : _socialDesktopView();
  }

  Widget _footerLegal(BuildContext context) {
    final Widget horizontalDivider = Container(
      height: 1,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: TalentyColors.carbon200, borderRadius: BorderRadius.circular(10.0)),
    );

    final Padding mobilePadding =
        Padding(padding: EdgeInsets.symmetric(vertical: TalentyGapSpaces.level4), child: horizontalDivider);

    final Widget mobileView = Column(children: [
      _legal(context),
      getValueForScreenType<Widget>(
        context: context,
        mobile: mobilePadding,
        tablet: mobilePadding,
        desktop: Container(),
      ),
      _socialNetworks(context)
    ]);

    final Widget desktopView = Row(children: [_legal(context), _socialNetworks(context)]);

    return Padding(
        padding: EdgeInsets.only(bottom: TalentyGapSpaces.level4),
        child: ScreenTypeLayout.builder(
          mobile: (BuildContext context) => mobileView,
          tablet: (BuildContext context) => mobileView,
          desktop: (BuildContext context) => desktopView,
        ));
  }

  @override
  Widget build(BuildContext context) {
    final Widget horizontalDivider = Container(
      height: 1,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: TalentyColors.carbon200, borderRadius: BorderRadius.circular(10.0)),
    );

    return Container(
      padding: EdgeInsets.symmetric(horizontal: pageHorizontalPaddingWithMaxWidth(context)),
      color: TalentyColors.carbon50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _footerInfo(context),
          Padding(
              padding: EdgeInsets.symmetric(
                vertical: TalentyGapSpaces.level4,
              ),
              child: horizontalDivider),
          _footerLegal(context)
        ],
      ),
    );
  }
}
