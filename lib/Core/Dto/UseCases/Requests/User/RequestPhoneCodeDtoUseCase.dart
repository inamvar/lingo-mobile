import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'RequestPhoneCodeDtoUseCase.freezed.dart';
part 'RequestPhoneCodeDtoUseCase.g.dart';

@freezed
class RequestPhoneCodeDtoUseCase with _$RequestPhoneCodeDtoUseCase {
  const factory RequestPhoneCodeDtoUseCase({
    String? phoneNumber,
  }) = _RequestPhoneCodeDtoUseCase;



  factory RequestPhoneCodeDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$RequestPhoneCodeDtoUseCaseFromJson(json);
}