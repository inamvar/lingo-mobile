import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'CreateOrderRequestDtoUseCase.freezed.dart';
part 'CreateOrderRequestDtoUseCase.g.dart';

@freezed
class CreateOrderRequestDtoUseCase with _$CreateOrderRequestDtoUseCase {
  const factory CreateOrderRequestDtoUseCase({
    String? courseId,
    int? currencyType
  }) = _CreateOrderRequestDtoUseCase;



  factory CreateOrderRequestDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderRequestDtoUseCaseFromJson(json);
}