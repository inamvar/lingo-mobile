import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'CreateOrderResponseDtoUseCase.freezed.dart';
part 'CreateOrderResponseDtoUseCase.g.dart';

@freezed
class CreateOrderResponseDtoUseCase with _$CreateOrderResponseDtoUseCase {
  const factory CreateOrderResponseDtoUseCase({
    int? orderId,
    PaymentUrlDetails? paymentUrlDetails,
  }) = _CreateOrderResponseDtoUseCase;

  factory CreateOrderResponseDtoUseCase.fromJson(Map<String, dynamic> json) => _$CreateOrderResponseDtoUseCaseFromJson(json);
}

@freezed
class PaymentUrlDetails with _$PaymentUrlDetails {
  const factory PaymentUrlDetails({
    String? paymentUrl,
    String? httpMethod,
    Params? params,
  }) = _PaymentUrlDetails;

  factory PaymentUrlDetails.fromJson(Map<String, dynamic> json) => _$PaymentUrlDetailsFromJson(json);
}

@freezed
class Params with _$Params {
  const factory Params({
    String? transactionId,
    String? sign,
  }) = _Params;

  factory Params.fromJson(Map<String, dynamic> json) => _$ParamsFromJson(json);
}
