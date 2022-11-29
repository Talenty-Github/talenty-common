import 'dart:async' show Future;

import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:talenty_common/components/topty_footer.dart';
import 'package:talenty_common/routes/main_routes.dart';
import 'package:talenty_common/talenty_common.dart';

class TalentyLegal extends StatefulWidget {
  final String title;
  final String descriptionPath;

  const TalentyLegal({
    super.key,
    required this.title,
    required this.descriptionPath,
  });

  @override
  State<TalentyLegal> createState() => _TalentyLegalState();
}

class _TalentyLegalState extends State<TalentyLegal> {
  final SizedBox space = SizedBox(height: TalentyGapSpaces.level3);
  String description = '';

  @override
  void initState() {
    super.initState();
    _init();
  }

  void _init() async {
    description = await _loadAsset(widget.descriptionPath);
    setState(() {});
  }

  Future<String> _loadAsset(String stringPath) async {
    return await rootBundle.loadString(stringPath);
  }

  Widget _navigation(BuildContext context) {
    final textColor = TalentyTextStyles().bodySmallNormal(color: TalentyColors.carbon600);
    const transparentColor = TalentyColors.transparent;

    return SizedBox(
      width: getValueForScreenType<double>(
        context: context,
        mobile: MediaQuery.of(context).size.width,
        tablet: 268.0,
        desktop: 268.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              hoverColor: transparentColor,
              splashColor: transparentColor,
              highlightColor: transparentColor,
              onTap: () => context.beamToNamed(MainRoutes.termsConditions),
              child: Text('Términos y Condiciones', style: textColor)),
          space,
          InkWell(
              hoverColor: transparentColor,
              splashColor: transparentColor,
              highlightColor: transparentColor,
              onTap: () => context.beamToNamed(MainRoutes.privacyPolicy),
              child: Text('Política de Tratamiento de Datos Personales (Política de Privacidad)', style: textColor)),
          space,
          InkWell(
              hoverColor: transparentColor,
              splashColor: transparentColor,
              highlightColor: transparentColor,
              onTap: () => context.beamToNamed(MainRoutes.cookiesPolicy),
              child: Text('Política de Cookies', style: textColor)),
        ],
      ),
    );
  }

  Widget _tabletMobileView(BuildContext context, {required String title, required String description}) {
    // List<Widget> textList = formJustifiedTextList(description);
    List<Widget> columnChildren = [
      Text(title, style: TalentyTextStyles().subHeadingSmallNormal(color: TalentyColors.carbon900)),
      space,
      Markdown(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        styleSheet: MarkdownStyleSheet(
          h4Align: WrapAlignment.center,
          textAlign: WrapAlignment.spaceBetween,
          orderedListAlign: WrapAlignment.start,
          p: TalentyTextStyles().bodySmallNormal()
        ),
        data: description
      ),
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: pageHorizontalPaddingWithMaxWidth(context)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: columnChildren,
            ),
          ),
          SizedBox(height: TalentyGapSpaces.level6),
          _navigation(context)
        ],
      ),
    );
  }

  Widget _desktopView(BuildContext context, {required String title, required String description}) {
    List<Widget> columnChildren = [
      Text(title, style: TalentyTextStyles().headingLarge()),
      space,
      Markdown(
        shrinkWrap: true,
        styleSheet: MarkdownStyleSheet(
          h4Align: WrapAlignment.center,
          textAlign: WrapAlignment.spaceBetween,
          orderedListAlign: WrapAlignment.start,
          p: TalentyTextStyles().bodySmallNormal()
        ),
        data: description
      )
    ];
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: pageHorizontalPaddingWithMaxWidth(context),
        vertical: TalentyGapSpaces.level6,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 2,
            child: SizedBox(
              width: 768.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: columnChildren,
              ),
            ),
          ),
          Flexible(flex: 1, child: _navigation(context))
        ],
      ),
    );
  }

  Widget _content(BuildContext context, {required String title, required String description}) {
    return getValueForScreenType<Widget>(
      context: context,
      mobile: _tabletMobileView(context, title: title, description: description),
      tablet: _tabletMobileView(context, title: title, description: description),
      desktop: _desktopView(context, title: title, description: description),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> nonSliverWidgets = [
      Padding(
        padding: EdgeInsets.symmetric(
            vertical: getValueForScreenType<double>(
          context: context,
          mobile: TalentyGapSpaces.level4,
          tablet: TalentyGapSpaces.level5,
          desktop: 0.0,
        )),
        child: _content(context, title: widget.title, description: description),
      ),
      const TalentyFooter(),
    ];

    return Scaffold(
      backgroundColor: TalentyColors.white,
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          scrollbars: getValueForScreenType<bool>(
            context: context,
            mobile: false,
            tablet: false,
            desktop: true
          )),
        child: CustomScrollView(
          slivers: [
            ...nonSliverWidgets.map(
              (widget) => SliverToBoxAdapter(child: widget),
            )
          ],
        ),
      ),
    );
  }
}
