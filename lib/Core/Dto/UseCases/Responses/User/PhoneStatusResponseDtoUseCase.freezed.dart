// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'PhoneStatusResponseDtoUseCase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PhoneStatusResponseDtoUseCase _$PhoneStatusResponseDtoUseCaseFromJson(
    Map<String, dynamic> json) {
  return _PhoneStatusResponseDtoUseCase.fromJson(json);
}

/// @nodoc
mixin _$PhoneStatusResponseDtoUseCase {
  bool? get phoneNumberConfirmed => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhoneStatusResponseDtoUseCaseCopyWith<PhoneStatusResponseDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneStatusResponseDtoUseCaseCopyWith<$Res> {
  factory $PhoneStatusResponseDtoUseCaseCopyWith(
          PhoneStatusResponseDtoUseCase value,
          $Res Function(PhoneStatusResponseDtoUseCase) then) =
      _$PhoneStatusResponseDtoUseCaseCopyWithImpl<$Res,
          PhoneStatusResponseDtoUseCase>;
  @useResult
  $Res call({bool? phoneNumberConfirmed, String? phoneNumber});
}

/// @nodoc
class _$PhoneStatusResponseDtoUseCaseCopyWithImpl<$Res,
        $Val extends PhoneStatusResponseDtoUseCase>
    implements $PhoneStatusResponseDtoUseCaseCopyWith<$Res> {
  _$PhoneStatusResponseDtoUseCaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumberConfirmed = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumberConfirmed: freezed == phoneNumberConfirmed
          ? _value.phoneNumberConfirmed
          : phoneNumberConfirmed // ignore: cast_nullable_to_non_nullable
              as bool?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PhoneStatusResponseDtoUseCaseCopyWith<$Res>
    implements $PhoneStatusResponseDtoUseCaseCopyWith<$Res> {
  factory _$$_PhoneStatusResponseDtoUseCaseCopyWith(
          _$_PhoneStatusResponseDtoUseCase value,
          $Res Function(_$_PhoneStatusResponseDtoUseCase) then) =
      __$$_PhoneStatusResponseDtoUseCaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? phoneNumberConfirmed, String? phoneNumber});
}

/// @nodoc
class __$$_PhoneStatusResponseDtoUseCaseCopyWithImpl<$Res>
    extends _$PhoneStatusResponseDtoUseCaseCopyWithImpl<$Res,
        _$_PhoneStatusResponseDtoUseCase>
    implements _$$_PhoneStatusResponseDtoUseCaseCopyWith<$Res> {
  __$$_PhoneStatusResponseDtoUseCaseCopyWithImpl(
      _$_PhoneStatusResponseDtoUseCase _value,
      $Res Function(_$_PhoneStatusResponseDtoUseCase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumberConfirmed = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$_PhoneStatusResponseDtoUseCase(
      phoneNumberConfirmed: freezed == phoneNumberConfirmed
          ? _value.phoneNumberConfirmed
          : phoneNumberConfirmed // ignore: cast_nullable_to_non_nullable
              as bool?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PhoneStatusResponseDtoUseCase
    with DiagnosticableTreeMixin
    implements _PhoneStatusResponseDtoUseCase {
  const _$_PhoneStatusResponseDtoUseCase(
      {this.phoneNumberConfirmed, this.phoneNumber});

  factory _$_PhoneStatusResponseDtoUseCase.fromJson(
          Map<String, dynamic> json) =>
      _$$_PhoneStatusResponseDtoUseCaseFromJson(json);

  @override
  final bool? phoneNumberConfirmed;
  @override
  final String? phoneNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhoneStatusResponseDtoUseCase(phoneNumberConfirmed: $phoneNumberConfirmed, phoneNumber: $phoneNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PhoneStatusResponseDtoUseCase'))
      ..add(DiagnosticsProperty('phoneNumberConfirmed', phoneNumberConfirmed))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneStatusResponseDtoUseCase &&
            (identical(other.phoneNumberConfirmed, phoneNumberConfirmed) ||
                other.phoneNumberConfirmed == phoneNumberConfirmed) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, phoneNumberConfirmed, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhoneStatusResponseDtoUseCaseCopyWith<_$_PhoneStatusResponseDtoUseCase>
      get copyWith => __$$_PhoneStatusResponseDtoUseCaseCopyWithImpl<
          _$_PhoneStatusResponseDtoUseCase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhoneStatusResponseDtoUseCaseToJson(
      this,
    );
  }
}

abstract class _PhoneStatusResponseDtoUseCase
    implements PhoneStatusResponseDtoUseCase {
  const factory _PhoneStatusResponseDtoUseCase(
      {final bool? phoneNumberConfirmed,
      final String? phoneNumber}) = _$_PhoneStatusResponseDtoUseCase;

  factory _PhoneStatusResponseDtoUseCase.fromJson(Map<String, dynamic> json) =
      _$_PhoneStatusResponseDtoUseCase.fromJson;

  @override
  bool? get phoneNumberConfirmed;
  @override
  String? get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$_PhoneStatusResponseDtoUseCaseCopyWith<_$_PhoneStatusResponseDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}
