import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lingo/Core/Dto/Models/Banner.dart';

part 'GetBannersResponseDtoUseCase.freezed.dart';
part 'GetBannersResponseDtoUseCase.g.dart';

@freezed
class GetBannersResponseDtoUseCase with _$GetBannersResponseDtoUseCase {
  const factory GetBannersResponseDtoUseCase({
    List<Banner>? banners,
  }) = _GetBannersResponseDtoUseCase;



  factory GetBannersResponseDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$GetBannersResponseDtoUseCaseFromJson(json);
}