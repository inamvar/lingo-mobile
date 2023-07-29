import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'DownloadReceiptRequestDtoUseCase.freezed.dart';
part 'DownloadReceiptRequestDtoUseCase.g.dart';

@freezed
class DownloadReceiptRequestDtoUseCase with _$DownloadReceiptRequestDtoUseCase {
  const factory DownloadReceiptRequestDtoUseCase({
    String? orderId,
    @JsonKey(includeToJson: false,includeFromJson: false)
    Function? onReceiveProgress,
  }) = _DownloadReceiptRequestDtoUseCase;



  factory DownloadReceiptRequestDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$DownloadReceiptRequestDtoUseCaseFromJson(json);
}