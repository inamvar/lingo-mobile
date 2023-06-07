import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ChangePassRequestDtoUseCase.freezed.dart';
part 'ChangePassRequestDtoUseCase.g.dart';

@freezed
class ChangePassRequestDtoUseCase with _$ChangePassRequestDtoUseCase {
  const factory ChangePassRequestDtoUseCase({
    String? currentPassword,
    String? newPassword,
    String? confirmNewPassword,
  }) = _ChangePassRequestDtoUseCase;



  factory ChangePassRequestDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$ChangePassRequestDtoUseCaseFromJson(json);
}