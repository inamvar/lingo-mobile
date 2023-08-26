import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'Banner.freezed.dart';
part 'Banner.g.dart';

@freezed
class Banner with _$Banner {
  const factory Banner({
    required String fileUrl,
    required String fileName,
    required String fileBucket,
    required String description,
    required DateTime createdAt,
    required int id,
  }) = _Banner;
  
  

  factory Banner.fromJson(Map<String, dynamic> json) =>
      _$BannerFromJson(json);
}