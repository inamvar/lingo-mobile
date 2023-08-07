import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ResetPassResponseDtoUseCase.freezed.dart';
part 'ResetPassResponseDtoUseCase.g.dart';

@freezed
class ResetPassResponseDtoUseCase with _$ResetPassResponseDtoUseCase {
  const factory ResetPassResponseDtoUseCase({
    String? expirationTime,
  }) = _ResetPassResponseDtoUseCase;
  


  factory ResetPassResponseDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$ResetPassResponseDtoUseCaseFromJson(json);
}