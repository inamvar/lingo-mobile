// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Discount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Discount _$$_DiscountFromJson(Map<String, dynamic> json) => _$_Discount(
      discountValue: json['discountValue'] as int?,
      finalAmounts: (json['finalAmounts'] as List<dynamic>?)
          ?.map((e) => Pricing.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DiscountToJson(_$_Discount instance) =>
    <String, dynamic>{
      'discountValue': instance.discountValue,
      'finalAmounts': instance.finalAmounts,
    };
