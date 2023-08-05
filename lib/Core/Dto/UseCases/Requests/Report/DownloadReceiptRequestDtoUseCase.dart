import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lingo/Core/Dto/Models/Order.dart';

part 'DownloadReceiptRequestDtoUseCase.freezed.dart';
part 'DownloadReceiptRequestDtoUseCase.g.dart';

@freezed
class DownloadReceiptRequestDtoUseCase with _$DownloadReceiptRequestDtoUseCase {
  const factory DownloadReceiptRequestDtoUseCase({
    Order? order,
    @JsonKey(includeToJson: false,includeFromJson: false)
    Function(int,int)? onReceiveProgress,
  }) = _DownloadReceiptRequestDtoUseCase;



  factory DownloadReceiptRequestDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$DownloadReceiptRequestDtoUseCaseFromJson(json);
}