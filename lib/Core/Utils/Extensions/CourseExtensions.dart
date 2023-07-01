import 'package:lingo/Core/Dto/Models/Course.dart';

import '../../Dto/Models/Chapter.dart';

extension CourseExtensions on Course {
  String getPriceIRR() {
    var price = "";
    pricings?.forEach((element) {
      if (element.currencyType! == "IRR") price = element.amount.toString();
    });
    return "${_seRagham(price)} تومان ";
  }

  String getFinalPriceIRR() {
    var price = "";
    discount?.finalAmounts?.forEach((element) {
      if (element.currencyType! == "IRR") price = element.amount.toString();
    });
    return "${_seRagham(price)} تومان ";
  }

  _seRagham(String number, {String separator = ","}) {
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
}
