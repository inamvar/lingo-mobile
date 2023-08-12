// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'RequestPhoneCodeDtoUseCase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestPhoneCodeDtoUseCase _$RequestPhoneCodeDtoUseCaseFromJson(
    Map<String, dynamic> json) {
  return _RequestPhoneCodeDtoUseCase.fromJson(json);
}

/// @nodoc
mixin _$RequestPhoneCodeDtoUseCase {
  String? get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestPhoneCodeDtoUseCaseCopyWith<RequestPhoneCodeDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestPhoneCodeDtoUseCaseCopyWith<$Res> {
  factory $RequestPhoneCodeDtoUseCaseCopyWith(RequestPhoneCodeDtoUseCase value,
          $Res Function(RequestPhoneCodeDtoUseCase) then) =
      _$RequestPhoneCodeDtoUseCaseCopyWithImpl<$Res,
          RequestPhoneCodeDtoUseCase>;
  @useResult
  $Res call({String? phoneNumber});
}

/// @nodoc
class _$RequestPhoneCodeDtoUseCaseCopyWithImpl<$Res,
        $Val extends RequestPhoneCodeDtoUseCase>
    implements $RequestPhoneCodeDtoUseCaseCopyWith<$Res> {
  _$RequestPhoneCodeDtoUseCaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RequestPhoneCodeDtoUseCaseCopyWith<$Res>
    implements $RequestPhoneCodeDtoUseCaseCopyWith<$Res> {
  factory _$$_RequestPhoneCodeDtoUseCaseCopyWith(
          _$_RequestPhoneCodeDtoUseCase value,
          $Res Function(_$_RequestPhoneCodeDtoUseCase) then) =
      __$$_RequestPhoneCodeDtoUseCaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? phoneNumber});
}

/// @nodoc
class __$$_RequestPhoneCodeDtoUseCaseCopyWithImpl<$Res>
    extends _$RequestPhoneCodeDtoUseCaseCopyWithImpl<$Res,
        _$_RequestPhoneCodeDtoUseCase>
    implements _$$_RequestPhoneCodeDtoUseCaseCopyWith<$Res> {
  __$$_RequestPhoneCodeDtoUseCaseCopyWithImpl(
      _$_RequestPhoneCodeDtoUseCase _value,
      $Res Function(_$_RequestPhoneCodeDtoUseCase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(_$_RequestPhoneCodeDtoUseCase(
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestPhoneCodeDtoUseCase
    with DiagnosticableTreeMixin
    implements _RequestPhoneCodeDtoUseCase {
  const _$_RequestPhoneCodeDtoUseCase({this.phoneNumber});

  factory _$_RequestPhoneCodeDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$$_RequestPhoneCodeDtoUseCaseFromJson(json);

  @override
  final String? phoneNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RequestPhoneCodeDtoUseCase(phoneNumber: $phoneNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RequestPhoneCodeDtoUseCase'))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestPhoneCodeDtoUseCase &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestPhoneCodeDtoUseCaseCopyWith<_$_RequestPhoneCodeDtoUseCase>
      get copyWith => __$$_RequestPhoneCodeDtoUseCaseCopyWithImpl<
          _$_RequestPhoneCodeDtoUseCase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestPhoneCodeDtoUseCaseToJson(
      this,
    );
  }
}

abstract class _RequestPhoneCodeDtoUseCase
    implements RequestPhoneCodeDtoUseCase {
  const factory _RequestPhoneCodeDtoUseCase({final String? phoneNumber}) =
      _$_RequestPhoneCodeDtoUseCase;

  factory _RequestPhoneCodeDtoUseCase.fromJson(Map<String, dynamic> json) =
      _$_RequestPhoneCodeDtoUseCase.fromJson;

  @override
  String? get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$_RequestPhoneCodeDtoUseCaseCopyWith<_$_RequestPhoneCodeDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}
