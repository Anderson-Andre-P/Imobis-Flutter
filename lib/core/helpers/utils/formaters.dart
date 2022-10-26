import 'package:intl/intl.dart';

class Formatters {
  static int convertCurrencyStrToInt(String s) {
    String str =
        s.replaceAll("R\$", "").replaceAll(".", "").replaceAll(",", "");
    return int.parse(str);
  }

  static String convertCurrency(double value) {
    final formatter = NumberFormat.simpleCurrency(locale: "pt_Br");

    return formatter.format(value);
  }
}
