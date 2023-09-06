import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'Setting.freezed.dart';
part 'Setting.g.dart';

@freezed
class Setting with _$Setting {
  const factory Setting({
    String? key,
    String? value,
    String? description
  }) = _Setting;
  


  factory Setting.fromJson(Map<String, dynamic> json) =>
      _$SettingFromJson(json);
}