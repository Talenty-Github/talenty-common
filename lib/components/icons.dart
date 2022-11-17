import 'package:flutter/material.dart';

class TalentyIcon extends StatelessWidget {
  final String icon;
  final double? size;
  final Color? color;

  const TalentyIcon({
    required this.icon,
    this.size,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      icon,
      width: size,
      height: size,
      color: color,
    );
  }
}

class TalentyIconSize {
  static const double small = 16.0;
  static const double medium = 24.0;
  static const double large = 32.0;
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

  String get grid => '$_actionsPath/Grid.png';
  String get bookmark => '$_actionsPath/Bookmark.png';
  String get copy => '$_actionsPath/Copy.png';
  String get crop => '$_actionsPath/Crop.png';
  String get download => '$_actionsPath/Download.png';
  String get expand => '$_actionsPath/Expand.png';
  String get externalLink => '$_actionsPath/External-link.png';
  String get eyeOff => '$_actionsPath/Eye-off.png';
  String get eye => '$_actionsPath/Eye.png';
  String get fileCheck => '$_actionsPath/File-check.png';
  String get filePlus => '$_actionsPath/File-plus.png';
  String get fileSearch => '$_actionsPath/File-search.png';
  String get fileX => '$_actionsPath/File-x.png';
  String get link => '$_actionsPath/Link.png';
  String get lock => '$_actionsPath/Lock.png';
  String get logIn => '$_actionsPath/Log-in.png';
  String get logOut => '$_actionsPath/Log-out.png';
  String get micOff => '$_actionsPath/Mic-off.png';
  String get mic => '$_actionsPath/Mic.png';
  String get minimize => '$_actionsPath/Minimize.png';
  String get save => '$_actionsPath/Save.png';
  String get search => '$_actionsPath/Search.png';
  String get send => '$_actionsPath/Send.png';
  String get unlink => '$_actionsPath/Unlink.png';
  String get unlock => '$_actionsPath/Unlock.png';
  String get upload => '$_actionsPath/Upload.png';
  String get wifiOff => '$_actionsPath/Wifi-off.png';
  String get wifi => '$_actionsPath/Wifi.png';
  String get zoomIn => '$_actionsPath/Zoom-in.png';
  String get zoomOut => '$_actionsPath/Zoom-out.png';
}

class Emotion {
  const Emotion();
  final String _emotionPath = 'assets/icons/emotion';

  String get handMetal => '$_emotionPath/Hand-metal.png';
  String get handPointer => '$_emotionPath/Hand-pointer.png';
  String get hand => '$_emotionPath/Hand.png';
  String get heartFull => '$_emotionPath/Heart-full.png';
  String get heart => '$_emotionPath/Heart.png';
  String get meh => '$_emotionPath/Meh.png';
  String get rating => '$_emotionPath/Rating.png';
  String get smile => '$_emotionPath/Smile.png';
  String get starFull => '$_emotionPath/Star-full.png';
  String get star => '$_emotionPath/Star.png';
  String get thumbsDown => '$_emotionPath/Thumbs-down.png';
  String get thumbsUp => '$_emotionPath/Thumbs-up.png';
}

class Essentials {
  const Essentials();
  final String _essentialsPath = 'assets/icons/essentials';

  String get archive => '$_essentialsPath/Archive.png';
  String get arrowLeftRight => '$_essentialsPath/Arrow-left-right.png';
  String get bellOff => '$_essentialsPath/Bell-off.png';
  String get bellPlus => '$_essentialsPath/Bell-plus.png';
  String get bell => '$_essentialsPath/Bell.png';
  String get bike => '$_essentialsPath/Bike.png';
  String get bus => '$_essentialsPath/Bus.png';
  String get calendar => '$_essentialsPath/Calendar.png';
  String get camera => '$_essentialsPath/Camera.png';
  String get clipboardCheck => '$_essentialsPath/Clipboard-check.png';
  String get clipboardList => '$_essentialsPath/Clipboard-list.png';
  String get clipboard => '$_essentialsPath/Clipboard.png';
  String get clock => '$_essentialsPath/Clock.png';
  String get contact => '$_essentialsPath/Contact.png';
  String get edit => '$_essentialsPath/Edit.png';
  String get fileText => '$_essentialsPath/File-text.png';
  String get file => '$_essentialsPath/File.png';
  String get files => '$_essentialsPath/Files.png';
  String get filter => '$_essentialsPath/Filter.png';
  String get folder => '$_essentialsPath/Folder.png';
  String get gift => '$_essentialsPath/Gift.png';
  String get home => '$_essentialsPath/Home.png';
  String get image => '$_essentialsPath/Image.png';
  String get mail => '$_essentialsPath/Mail.png';
  String get mapPin => '$_essentialsPath/Map-pin.png';
  String get map => '$_essentialsPath/Map.png';
  String get megaphone => '$_essentialsPath/Megaphone.png';
  String get phone => '$_essentialsPath/Phone.png';
  String get plane => '$_essentialsPath/Plane.png';
  String get profile => '$_essentialsPath/Profile.png';
  String get refresh => '$_essentialsPath/Refresh.png';
  String get rocker => '$_essentialsPath/Rocker.png';
  String get settings2 => '$_essentialsPath/Settings-2.png';
  String get setting => '$_essentialsPath/Settings.png';
  String get shoppingCart => '$_essentialsPath/Shopping-cart.png';
  String get trash => '$_essentialsPath/Trash.png';
  String get union => '$_essentialsPath/Union.png';
  String get user => '$_essentialsPath/User.png';
}

class Miscellaneous {
  const Miscellaneous();
  final String _miscellaneousPath = 'assets/icons/miscellaneous';

  String get activity => '$_miscellaneousPath/Activity.png';
  String get bot => '$_miscellaneousPath/bot.png';
  String get bug => '$_miscellaneousPath/bug.png';
  String get coffee => '$_miscellaneousPath/Coffee.png';
  String get compass => '$_miscellaneousPath/Compass.png';
  String get cookie => '$_miscellaneousPath/Cookie.png';
  String get database => '$_miscellaneousPath/Database.png';
  String get flag => '$_miscellaneousPath/Flag.png';
  String get gem => '$_miscellaneousPath/Gem.png';
  String get ghost => '$_miscellaneousPath/Ghost.png';
  String get laptop => '$_miscellaneousPath/Laptop.png';
  String get moon => '$_miscellaneousPath/Moon.png';
  String get paperclip => '$_miscellaneousPath/Paperclip.png';
  String get pin => '$_miscellaneousPath/Pin.png';
  String get printer => '$_miscellaneousPath/Printer.png';
  String get ruler => '$_miscellaneousPath/Ruler.png';
  String get smartphone => '$_miscellaneousPath/Smartphone.png';
  String get tag => '$_miscellaneousPath/Tag.png';
  String get umbrella => '$_miscellaneousPath/Umbrella.png';
}

class Money {
  const Money();
  final String _moneyPath = 'assets/icons/money';

  String get atm1 => '$_moneyPath/Atm-1.png';
  String get atm => '$_moneyPath/Atm.png';
  String get bank => '$_moneyPath/Bank.png';
  String get banknote => '$_moneyPath/Banknote.png';
  String get cashBill => '$_moneyPath/Cash-bill.png';
  String get cashFile => '$_moneyPath/Cash-file.png';
  String get coin => '$_moneyPath/Coin.png';
  String get coins => '$_moneyPath/Coins.png';
  String get creditCard => '$_moneyPath/Credit-card.png';
  String get safe => '$_moneyPath/Safe.png';
  String get wallet => '$_moneyPath/Wallet.png';
}

class Navigation {
  const Navigation();
  final String _navigationPath = 'assets/icons/navigation';

  String get alertCircleFull => '$_navigationPath/Alert-circle-full.png';
  String get alertCircle => '$_navigationPath/Alert-circle.png';
  String get alertOctagonFull => '$_navigationPath/Alert-octagon-full.png';
  String get alertOctagon => '$_navigationPath/Alert-octagon.png';
  String get alertTriangleFull => '$_navigationPath/Alert-triangle-full.png';
  String get alertTriangle => '$_navigationPath/Alert-triangle.png';
  String get burgerMenu => '$_navigationPath/Burger-menu.png';
  String get checkCircleFull => '$_navigationPath/Check-circle-full.png';
  String get checkCircle => '$_navigationPath/Check-circle.png';
  String get check => '$_navigationPath/Check.png';
  String get chevronDown => '$_navigationPath/Chevron-down.png';
  String get chevronLeft => '$_navigationPath/Chevron-left.png';
  String get chevronRight => '$_navigationPath/Chevron-right.png';
  String get chevronUp => '$_navigationPath/Chevron-up.png';
  String get helpCircleFull => '$_navigationPath/Help-circle-full.png';
  String get helpCircle => '$_navigationPath/Help-circle.png';
  String get infoFull => '$_navigationPath/Info-full.png';
  String get info => '$_navigationPath/Info.png';
  String get moreHorizontal => '$_navigationPath/More-horizontal.png';
  String get moreVertical => '$_navigationPath/More-vertical.png';
  String get xCircleFull => '$_navigationPath/X-circle-full.png';
  String get xCircle => '$_navigationPath/X-circle.png';
  String get x => '$_navigationPath/X.png';
}

class Social {
  const Social();
  final String _socialPath = 'assets/icons/social';

  String get facebook => '$_socialPath/Facebook.png';
  String get google => '$_socialPath/Google.png';
  String get instagram => '$_socialPath/Instagram.png';
  String get linkedin => '$_socialPath/Linkedin.png';
  String get tikTok => '$_socialPath/TikTok.png';
  String get twitter => '$_socialPath/Twitter.png';
  String get whatsapp => '$_socialPath/Whatsapp.png';
  String get youtube => '$_socialPath/Youtube.png';
}
