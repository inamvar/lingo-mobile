// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ResetPassResponseDtoUseCase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResetPassResponseDtoUseCase _$ResetPassResponseDtoUseCaseFromJson(
    Map<String, dynamic> json) {
  return _ResetPassResponseDtoUseCase.fromJson(json);
}

/// @nodoc
mixin _$ResetPassResponseDtoUseCase {
  String? get expirationTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResetPassResponseDtoUseCaseCopyWith<ResetPassResponseDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPassResponseDtoUseCaseCopyWith<$Res> {
  factory $ResetPassResponseDtoUseCaseCopyWith(
          ResetPassResponseDtoUseCase value,
          $Res Function(ResetPassResponseDtoUseCase) then) =
      _$ResetPassResponseDtoUseCaseCopyWithImpl<$Res,
          ResetPassResponseDtoUseCase>;
  @useResult
  $Res call({String? expirationTime});
}

/// @nodoc
class _$ResetPassResponseDtoUseCaseCopyWithImpl<$Res,
        $Val extends ResetPassResponseDtoUseCase>
    implements $ResetPassResponseDtoUseCaseCopyWith<$Res> {
  _$ResetPassResponseDtoUseCaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expirationTime = freezed,
  }) {
    return _then(_value.copyWith(
      expirationTime: freezed == expirationTime
          ? _value.expirationTime
          : expirationTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResetPassResponseDtoUseCaseCopyWith<$Res>
    implements $ResetPassResponseDtoUseCaseCopyWith<$Res> {
  factory _$$_ResetPassResponseDtoUseCaseCopyWith(
          _$_ResetPassResponseDtoUseCase value,
          $Res Function(_$_ResetPassResponseDtoUseCase) then) =
      __$$_ResetPassResponseDtoUseCaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? expirationTime});
}

/// @nodoc
class __$$_ResetPassResponseDtoUseCaseCopyWithImpl<$Res>
    extends _$ResetPassResponseDtoUseCaseCopyWithImpl<$Res,
        _$_ResetPassResponseDtoUseCase>
    implements _$$_ResetPassResponseDtoUseCaseCopyWith<$Res> {
  __$$_ResetPassResponseDtoUseCaseCopyWithImpl(
      _$_ResetPassResponseDtoUseCase _value,
      $Res Function(_$_ResetPassResponseDtoUseCase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expirationTime = freezed,
  }) {
    return _then(_$_ResetPassResponseDtoUseCase(
      expirationTime: freezed == expirationTime
          ? _value.expirationTime
          : expirationTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResetPassResponseDtoUseCase
    with DiagnosticableTreeMixin
    implements _ResetPassResponseDtoUseCase {
  const _$_ResetPassResponseDtoUseCase({this.expirationTime});

  factory _$_ResetPassResponseDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$$_ResetPassResponseDtoUseCaseFromJson(json);

  @override
  final String? expirationTime;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResetPassResponseDtoUseCase(expirationTime: $expirationTime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResetPassResponseDtoUseCase'))
      ..add(DiagnosticsProperty('expirationTime', expirationTime));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResetPassResponseDtoUseCase &&
            (identical(other.expirationTime, expirationTime) ||
                other.expirationTime == expirationTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, expirationTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResetPassResponseDtoUseCaseCopyWith<_$_ResetPassResponseDtoUseCase>
      get copyWith => __$$_ResetPassResponseDtoUseCaseCopyWithImpl<
          _$_ResetPassResponseDtoUseCase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResetPassResponseDtoUseCaseToJson(
      this,
    );
  }
}

abstract class _ResetPassResponseDtoUseCase
    implements ResetPassResponseDtoUseCase {
  const factory _ResetPassResponseDtoUseCase({final String? expirationTime}) =
      _$_ResetPassResponseDtoUseCase;

  factory _ResetPassResponseDtoUseCase.fromJson(Map<String, dynamic> json) =
      _$_ResetPassResponseDtoUseCase.fromJson;

  @override
  String? get expirationTime;
  @override
  @JsonKey(ignore: true)
  _$$_ResetPassResponseDtoUseCaseCopyWith<_$_ResetPassResponseDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}
