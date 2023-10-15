// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) => Order()
  ..courseName = json['courseName'] as String?
  ..orderDate = json['orderDate'] as String?
  ..price = (json['price'] as num?)?.toDouble()
  ..discount = (json['discount'] as num?)?.toDouble()
  ..finalPrice = (json['finalPrice'] as num?)?.toDouble()
  ..courseId = json['courseId'] as int?
  ..orderId = json['orderId'] as int?
  ..courseSlug = json['courseSlug'] as String?
  ..pdfReportLink = json['pdfReportLink'] as String?;

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'courseName': instance.courseName,
      'orderDate': instance.orderDate,
      'price': instance.price,
      'discount': instance.discount,
      'finalPrice': instance.finalPrice,
      'courseId': instance.courseId,
      'orderId': instance.orderId,
      'courseSlug': instance.courseSlug,
      'pdfReportLink': instance.pdfReportLink,
    };
