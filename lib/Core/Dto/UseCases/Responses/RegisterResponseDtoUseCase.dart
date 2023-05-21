import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/TokenResponseDtoUseCase.dart';

part 'RegisterResponseDtoUseCase.freezed.dart';
part 'RegisterResponseDtoUseCase.g.dart';

@freezed
class RegisterResponseDtoUseCase with _$RegisterResponseDtoUseCase {
  const factory RegisterResponseDtoUseCase({
    String? email,
    String? phoneNumber,
    String? firstName,
    String? lastName,
    TokenResponseDtoUseCase? authToken,
  }) = _RegisterResponseDtoUseCase;



  factory RegisterResponseDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseDtoUseCaseFromJson(json);
}