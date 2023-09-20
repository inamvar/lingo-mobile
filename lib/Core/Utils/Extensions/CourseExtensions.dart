import 'package:lingo/Core/Dto/Models/Course.dart';

import '../../Dto/Models/Chapter.dart';
import '../../Helpers/Tools.dart';

extension CourseExtensions on Course {
  String getPriceIRR() {
    var price = "";
    pricings?.forEach((element) {
      if (element.currencyType! == "IRR")
        price = (element.amount! / 10).round().toString();
    });
    return "${Tools.seRagham(price)} تومان ";
  }

  String getFinalPriceIRR() {
    var price = "";
    discount?.finalAmounts?.forEach((element) {
      if (element.currencyType! == "IRR")
        price = (element.amount! / 10).round().toString();
    });
    return "${Tools.seRagham(price)} تومان ";
  }

  String getCryptoPrice() {
    var pricing =
        pricings?.firstWhere((element) => element.currencyType == "USDT");
    return "${pricing!.amount} تتر";
  }

  String getCryptoFinalPrice() {
    var pricing = discount?.finalAmounts
        ?.firstWhere((element) => element.currencyType == "USDT");
    return "${pricing!.amount} تتر";
  }
}
