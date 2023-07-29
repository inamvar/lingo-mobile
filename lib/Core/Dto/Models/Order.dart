import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'Order.freezed.dart';
part 'Order.g.dart';

@freezed
class Order with _$Order {
  const factory Order({
  String? courseName,
  String? orderDate,
  int? price,
  int? discount,
  int? finalPrice,
  int? courseId,
  int? orderId,
  String? courseSlug,
  }) = _Order;
  


  factory Order.fromJson(Map<String, dynamic> json) =>
      _$OrderFromJson(json);
}