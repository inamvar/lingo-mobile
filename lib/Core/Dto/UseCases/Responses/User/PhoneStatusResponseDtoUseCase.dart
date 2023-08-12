import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'PhoneStatusResponseDtoUseCase.freezed.dart';
part 'PhoneStatusResponseDtoUseCase.g.dart';

@freezed
class PhoneStatusResponseDtoUseCase with _$PhoneStatusResponseDtoUseCase {
  const factory PhoneStatusResponseDtoUseCase({
    bool? phoneNumberConfirmed,
    String? phoneNumber
  }) = _PhoneStatusResponseDtoUseCase;



  factory PhoneStatusResponseDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$PhoneStatusResponseDtoUseCaseFromJson(json);
}