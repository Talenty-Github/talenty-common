import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TalentyIcon extends StatelessWidget {
  final String icon;
  final double size;
  final Color? color;

  const TalentyIcon({
    required this.icon,
    this.size = TalentyIconSize.small,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      width: size,
      height: size,
      color: color,
    );
  }
}

class TalentyIconSize {
  static const double small = 16;
  static const double medium = 24;
  static const double large = 32;
}

class TalentyIcons {
  static Actions actions = const Actions();
  static Emotion emotion = const Emotion();
  static Essentials essentials = const Essentials();
  static Miscellaneous miscellaneous = const Miscellaneous();
  static Money money = const Money();
  static Navigation navigation = const Navigation();
  static Social social = const Social();
}

class Actions {
  const Actions();
  final String _actionsPath = 'assets/icons/actions';

  String get bookmark => '$_actionsPath/Bookmark.svg';
  String get copy => '$_actionsPath/Copy.svg';
  String get crop => '$_actionsPath/Crop.svg';
  String get download => '$_actionsPath/Download.svg';
  String get expand => '$_actionsPath/Expand.svg';
  String get externalLink => '$_actionsPath/External-link.svg';
  String get eyeOff => '$_actionsPath/Eye-off.svg';
  String get eye => '$_actionsPath/Eye.svg';
  String get fileCheck => '$_actionsPath/File-check.svg';
  String get filePlus => '$_actionsPath/File-plus.svg';
  String get fileSearch => '$_actionsPath/File-search.svg';
  String get fileX => '$_actionsPath/File-x.svg';
  String get link => '$_actionsPath/Link.svg';
  String get lock => '$_actionsPath/Lock.svg';
  String get logIn => '$_actionsPath/Log-in.svg';
  String get logOut => '$_actionsPath/Log-out.svg';
  String get micOff => '$_actionsPath/Mic-off.svg';
  String get mic => '$_actionsPath/Mic.svg';
  String get minimize => '$_actionsPath/Minimize.svg';
  String get save => '$_actionsPath/Save.svg';
  String get search => '$_actionsPath/Search.svg';
  String get send => '$_actionsPath/Send.svg';
  String get unlink => '$_actionsPath/Unlink.svg';
  String get unlock => '$_actionsPath/Unlock.svg';
  String get upload => '$_actionsPath/Upload.svg';
  String get wifiOff => '$_actionsPath/Wifi-off.svg';
  String get wifi => '$_actionsPath/Wifi.svg';
  String get zoomIn => '$_actionsPath/Zoom-in.svg';
  String get zoomOut => '$_actionsPath/Zoom-out.svg';
}

class Emotion {
  const Emotion();
  final String _emotionPath = 'assets/icons/emotion';

  String get handMetal => '$_emotionPath/Hand-metal.svg';
  String get handPointer => '$_emotionPath/Hand-pointer.svg';
  String get hand => '$_emotionPath/Hand.svg';
  String get heartFull => '$_emotionPath/Heart-full.svg';
  String get heart => '$_emotionPath/Heart.svg';
  String get meh => '$_emotionPath/Meh.svg';
  String get rating => '$_emotionPath/Rating.svg';
  String get smile => '$_emotionPath/Smile.svg';
  String get starFull => '$_emotionPath/Star-full.svg';
  String get star => '$_emotionPath/Star.svg';
  String get thumbsDown => '$_emotionPath/Thumbs-down.svg';
  String get thumbsUp => '$_emotionPath/Thumbs-up.svg';
}

class Essentials {
  const Essentials();
  final String _essentialsPath = 'assets/icons/essentials';

  String get archive => '$_essentialsPath/Archive.svg';
  String get arrowLeftRight => '$_essentialsPath/Arrow-left-right.svg';
  String get bellOff => '$_essentialsPath/Bell-off.svg';
  String get bellPlus => '$_essentialsPath/Bell-plus.svg';
  String get bell => '$_essentialsPath/Bell.svg';
  String get bike => '$_essentialsPath/Bike.svg';
  String get bus => '$_essentialsPath/Bus.svg';
  String get calendar => '$_essentialsPath/Calendar.svg';
  String get camera => '$_essentialsPath/Camera.svg';
  String get clipboardCheck => '$_essentialsPath/Clipboard-check.svg';
  String get clipboardList => '$_essentialsPath/Clipboard-list.svg';
  String get clipboard => '$_essentialsPath/Clipboard.svg';
  String get clock => '$_essentialsPath/Clock.svg';
  String get contact => '$_essentialsPath/Contact.svg';
  String get edit => '$_essentialsPath/Edit.svg';
  String get fileText => '$_essentialsPath/File-text.svg';
  String get file => '$_essentialsPath/File.svg';
  String get files => '$_essentialsPath/Files.svg';
  String get filter => '$_essentialsPath/Filter.svg';
  String get folder => '$_essentialsPath/Folder.svg';
  String get gift => '$_essentialsPath/Gift.svg';
  String get home => '$_essentialsPath/Home.svg';
  String get image => '$_essentialsPath/Image.svg';
  String get mail => '$_essentialsPath/Mail.svg';
  String get mapPin => '$_essentialsPath/Map-pin.svg';
  String get map => '$_essentialsPath/Map.svg';
  String get megaphone => '$_essentialsPath/Megaphone.svg';
  String get phone => '$_essentialsPath/Phone.svg';
  String get plane => '$_essentialsPath/Plane.svg';
  String get profile => '$_essentialsPath/Profile.svg';
  String get refresh => '$_essentialsPath/Refresh.svg';
  String get rocker => '$_essentialsPath/Rocker.svg';
  String get settings2 => '$_essentialsPath/Settings-2.svg';
  String get setting => '$_essentialsPath/Settings.svg';
  String get shoppingCart => '$_essentialsPath/Shopping-cart.svg';
  String get trash => '$_essentialsPath/Trash.svg';
  String get union => '$_essentialsPath/Union.svg';
  String get user => '$_essentialsPath/User.svg';
}

class Miscellaneous {
  const Miscellaneous();
  final String _miscellaneousPath = 'assets/icons/miscellaneous';

  String get activity => '$_miscellaneousPath/Activity.svg';
  String get bot => '$_miscellaneousPath/bot.svg';
  String get bug => '$_miscellaneousPath/bug.svg';
  String get coffee => '$_miscellaneousPath/Coffee.svg';
  String get compass => '$_miscellaneousPath/Compass.svg';
  String get cookie => '$_miscellaneousPath/Cookie.svg';
  String get database => '$_miscellaneousPath/Database.svg';
  String get flag => '$_miscellaneousPath/Flag.svg';
  String get gem => '$_miscellaneousPath/Gem.svg';
  String get ghost => '$_miscellaneousPath/Ghost.svg';
  String get laptop => '$_miscellaneousPath/Laptop.svg';
  String get moon => '$_miscellaneousPath/Moon.svg';
  String get paperclip => '$_miscellaneousPath/Paperclip.svg';
  String get pin => '$_miscellaneousPath/Pin.svg';
  String get printer => '$_miscellaneousPath/Printer.svg';
  String get ruler => '$_miscellaneousPath/Ruler.svg';
  String get smartphone => '$_miscellaneousPath/Smartphone.svg';
  String get tag => '$_miscellaneousPath/Tag.svg';
  String get umbrella => '$_miscellaneousPath/Umbrella.svg';
}

class Money {
  const Money();
  final String _moneyPath = 'assets/icons/money';

  String get atm1 => '$_moneyPath/Atm-1.svg';
  String get atm => '$_moneyPath/Atm.svg';
  String get bank => '$_moneyPath/Bank.svg';
  String get banknote => '$_moneyPath/Banknote.svg';
  String get cashBill => '$_moneyPath/Cash-bill.svg';
  String get cashFile => '$_moneyPath/Cash-file.svg';
  String get coin => '$_moneyPath/Coin.svg';
  String get coins => '$_moneyPath/Coins.svg';
  String get creditCard => '$_moneyPath/Credit-card.svg';
  String get safe => '$_moneyPath/Safe.svg';
  String get wallet => '$_moneyPath/Wallet.svg';
}

class Navigation {
  const Navigation();
  final String _navigationPath = 'assets/icons/navigation';

  String get alertCircleFull => '$_navigationPath/Alert-circle-full.svg';
  String get alertCircle => '$_navigationPath/Alert-circle.svg';
  String get alertOctagonFull => '$_navigationPath/Alert-octagon-full.svg';
  String get alertOctagon => '$_navigationPath/Alert-octagon.svg';
  String get alertTriangleFull => '$_navigationPath/Alert-triangle-full.svg';
  String get alertTriangle => '$_navigationPath/Alert-triangle.svg';
  String get burgerMenu => '$_navigationPath/Burger-menu.svg';
  String get checkCircleFull => '$_navigationPath/Check-circle-full.svg';
  String get checkCircle => '$_navigationPath/Check-circle.svg';
  String get check => '$_navigationPath/Check.svg';
  String get chevronDown => '$_navigationPath/Chevron-down.svg';
  String get chevronLeft => '$_navigationPath/Chevron-left.svg';
  String get chevronRight => '$_navigationPath/Chevron-right.svg';
  String get chevronUp => '$_navigationPath/Chevron-up.svg';
  String get helpCircleFull => '$_navigationPath/Help-circle-full.svg';
  String get helpCircle => '$_navigationPath/Help-circle.svg';
  String get infoFull => '$_navigationPath/Info-full.svg';
  String get info => '$_navigationPath/Info.svg';
  String get moreHorizontal => '$_navigationPath/More-horizontal.svg';
  String get moreVertical => '$_navigationPath/More-vertical.svg';
  String get xCircleFull => '$_navigationPath/X-circle-full.svg';
  String get xCircle => '$_navigationPath/X-circle.svg';
  String get x => '$_navigationPath/X.svg';
}

class Social {
  const Social();
  final String _socialPath = 'assets/icons/social';

  String get facebook => '$_socialPath/Facebook.svg';
  String get google => '$_socialPath/Google.svg';
  String get instagram => '$_socialPath/Instagram.svg';
  String get linkedin => '$_socialPath/Linkedin.svg';
  String get twitter => '$_socialPath/Twitter.svg';
  String get whatsapp => '$_socialPath/Whatsapp.svg';
  String get youtube => '$_socialPath/Youtube.svg';
}
