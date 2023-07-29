import 'package:intl/intl.dart';
import 'package:shamsi_date/shamsi_date.dart';

class Tools{
  static bool isValidPass(String pass){
    return RegExp(r"^(?=.*\d)(?=.*[#$^+=!*()@%&])(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$")
        .hasMatch(pass);
  }

  static String seRagham(String number, {String separator = ","}) {
    String str = "";
    var numberSplit = number.split('.');
    number = numberSplit[0].replaceAll(separator, '');
    for (var i = number.length; i > 0;) {
      if (i > 3) {
        str = separator + number.substring(i - 3, i) + str;
      } else {
        str = number.substring(0, i) + str;
      }
      i = i - 3;
    }
    if (numberSplit.length > 1) {
      str += '.' + numberSplit[1];
    }
    return str;
  }

  static String getTimeOfDate(String dateStr){
    String result = "";

    DateFormat dateFormat = DateFormat("yyyy-MM-dd'T'HH:mm:ss");
    DateFormat timeFormat = DateFormat("HH:mm:ss");
    DateTime date = dateFormat.parse(dateStr);

    var jalaliDate = Jalali.fromGregorian(Gregorian.fromDateTime(date));
    result = timeFormat.format(jalaliDate.toDateTime());
    return result;
  }

  static String getOnlyDate(String dateStr){
    DateFormat dateFormat = DateFormat("yyyy-MM-dd'T'HH:mm:ss");
    DateFormat timeFormat = DateFormat("yyyy/MM/dd");
    DateTime date = dateFormat.parse(dateStr);

    var jalaliDate = Jalali.fromGregorian(Gregorian.fromDateTime(date));
    return "${jalaliDate.year}/${jalaliDate.month}/${jalaliDate.day}";
  }
}