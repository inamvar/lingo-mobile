// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Order _$$_OrderFromJson(Map<String, dynamic> json) => _$_Order(
      courseName: json['courseName'] as String?,
      orderDate: json['orderDate'] as String?,
      price: json['price'] as int?,
      discount: json['discount'] as int?,
      finalPrice: json['finalPrice'] as int?,
      courseId: json['courseId'] as int?,
      orderId: json['orderId'] as int?,
      courseSlug: json['courseSlug'] as String?,
    );

Map<String, dynamic> _$$_OrderToJson(_$_Order instance) => <String, dynamic>{
      'courseName': instance.courseName,
      'orderDate': instance.orderDate,
      'price': instance.price,
      'discount': instance.discount,
      'finalPrice': instance.finalPrice,
      'courseId': instance.courseId,
      'orderId': instance.orderId,
      'courseSlug': instance.courseSlug,
    };
