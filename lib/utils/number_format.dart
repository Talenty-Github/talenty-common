import 'package:intl/intl.dart';

String formatPrice(int price) {
  var formatter = NumberFormat('###,###', 'es');
  return '\$${formatter.format(price)}';
}
