// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CreateOrderResponseDtoUseCase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateOrderResponseDtoUseCase _$$_CreateOrderResponseDtoUseCaseFromJson(
        Map<String, dynamic> json) =>
    _$_CreateOrderResponseDtoUseCase(
      orderId: json['orderId'] as int?,
      paymentUrlDetails: json['paymentUrlDetails'] == null
          ? null
          : PaymentUrlDetails.fromJson(
              json['paymentUrlDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CreateOrderResponseDtoUseCaseToJson(
        _$_CreateOrderResponseDtoUseCase instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'paymentUrlDetails': instance.paymentUrlDetails,
    };

_$_PaymentUrlDetails _$$_PaymentUrlDetailsFromJson(Map<String, dynamic> json) =>
    _$_PaymentUrlDetails(
      paymentUrl: json['paymentUrl'] as String?,
      httpMethod: json['httpMethod'] as String?,
      params: json['params'] == null
          ? null
          : Params.fromJson(json['params'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PaymentUrlDetailsToJson(
        _$_PaymentUrlDetails instance) =>
    <String, dynamic>{
      'paymentUrl': instance.paymentUrl,
      'httpMethod': instance.httpMethod,
      'params': instance.params,
    };

_$_Params _$$_ParamsFromJson(Map<String, dynamic> json) => _$_Params(
      transactionId: json['transactionId'] as String?,
      sign: json['sign'] as String?,
    );

Map<String, dynamic> _$$_ParamsToJson(_$_Params instance) => <String, dynamic>{
      'transactionId': instance.transactionId,
      'sign': instance.sign,
    };
