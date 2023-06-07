import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'UpdateProfileRequestDtoUseCase.freezed.dart';
part 'UpdateProfileRequestDtoUseCase.g.dart';

@freezed
class UpdateProfileRequestDtoUseCase with _$UpdateProfileRequestDtoUseCase {
  const factory UpdateProfileRequestDtoUseCase({
    String? firstName,
    String? lastName,
    String? phoneNumber,
  }) = _UpdateProfileRequestDtoUseCase;



  factory UpdateProfileRequestDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileRequestDtoUseCaseFromJson(json);
}