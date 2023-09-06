// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Setting _$SettingFromJson(Map<String, dynamic> json) {
  return _Setting.fromJson(json);
}

/// @nodoc
mixin _$Setting {
  String? get key => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingCopyWith<Setting> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingCopyWith<$Res> {
  factory $SettingCopyWith(Setting value, $Res Function(Setting) then) =
      _$SettingCopyWithImpl<$Res, Setting>;
  @useResult
  $Res call({String? key, String? value, String? description});
}

/// @nodoc
class _$SettingCopyWithImpl<$Res, $Val extends Setting>
    implements $SettingCopyWith<$Res> {
  _$SettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SettingCopyWith<$Res> implements $SettingCopyWith<$Res> {
  factory _$$_SettingCopyWith(
          _$_Setting value, $Res Function(_$_Setting) then) =
      __$$_SettingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? key, String? value, String? description});
}

/// @nodoc
class __$$_SettingCopyWithImpl<$Res>
    extends _$SettingCopyWithImpl<$Res, _$_Setting>
    implements _$$_SettingCopyWith<$Res> {
  __$$_SettingCopyWithImpl(_$_Setting _value, $Res Function(_$_Setting) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_Setting(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Setting with DiagnosticableTreeMixin implements _Setting {
  const _$_Setting({this.key, this.value, this.description});

  factory _$_Setting.fromJson(Map<String, dynamic> json) =>
      _$$_SettingFromJson(json);

  @override
  final String? key;
  @override
  final String? value;
  @override
  final String? description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Setting(key: $key, value: $value, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Setting'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Setting &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, value, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingCopyWith<_$_Setting> get copyWith =>
      __$$_SettingCopyWithImpl<_$_Setting>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SettingToJson(
      this,
    );
  }
}

abstract class _Setting implements Setting {
  const factory _Setting(
      {final String? key,
      final String? value,
      final String? description}) = _$_Setting;

  factory _Setting.fromJson(Map<String, dynamic> json) = _$_Setting.fromJson;

  @override
  String? get key;
  @override
  String? get value;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_SettingCopyWith<_$_Setting> get copyWith =>
      throw _privateConstructorUsedError;
}
