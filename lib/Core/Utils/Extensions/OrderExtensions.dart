import 'dart:io';

import 'package:path_provider/path_provider.dart';

import '../../Dto/Models/Order.dart';

extension OrderExtensions on Order{
  Future<String> getReceiptPath() async {
    Directory dir = await getApplicationDocumentsDirectory();
    return '${dir.path}/${orderId!.toString()}.pdf';
  }
}