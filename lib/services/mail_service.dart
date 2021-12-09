import 'package:url_launcher/url_launcher.dart';

class MailService {
  void sendMail(String number) => launch('mailto:isaac.marcus.lam@gmail.com');
}
