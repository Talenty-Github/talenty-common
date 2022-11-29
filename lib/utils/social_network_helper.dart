import 'package:url_launcher/url_launcher.dart';

enum SocialNetwork {
  tiktok('https://www.tiktok.com/@topty.co'),
  instagram('https://www.instagram.com/topty.col/'),
  facebook('https://www.facebook.com/Talenty.co'),
  youtube('https://www.youtube.com/channel/UC9TQ51gqgT69-AnjXgPPw0A');

  final String url;
  const SocialNetwork(this.url);
}

class SocialMediaHelper {
  SocialMediaHelper._();

  static Future<void> launchSocialUrl(SocialNetwork socialNetwork) async {
    await launchUrl(Uri.parse(socialNetwork.url));
  }
}
