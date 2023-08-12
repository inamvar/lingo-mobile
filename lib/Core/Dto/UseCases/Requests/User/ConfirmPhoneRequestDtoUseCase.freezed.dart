// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ConfirmPhoneRequestDtoUseCase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConfirmPhoneRequestDtoUseCase _$ConfirmPhoneRequestDtoUseCaseFromJson(
    Map<String, dynamic> json) {
  return _ConfirmPhoneRequestDtoUseCase.fromJson(json);
}

/// @nodoc
mixin _$ConfirmPhoneRequestDtoUseCase {
  String? get securityCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfirmPhoneRequestDtoUseCaseCopyWith<ConfirmPhoneRequestDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmPhoneRequestDtoUseCaseCopyWith<$Res> {
  factory $ConfirmPhoneRequestDtoUseCaseCopyWith(
          ConfirmPhoneRequestDtoUseCase value,
          $Res Function(ConfirmPhoneRequestDtoUseCase) then) =
      _$ConfirmPhoneRequestDtoUseCaseCopyWithImpl<$Res,
          ConfirmPhoneRequestDtoUseCase>;
  @useResult
  $Res call({String? securityCode});
}

/// @nodoc
class _$ConfirmPhoneRequestDtoUseCaseCopyWithImpl<$Res,
        $Val extends ConfirmPhoneRequestDtoUseCase>
    implements $ConfirmPhoneRequestDtoUseCaseCopyWith<$Res> {
  _$ConfirmPhoneRequestDtoUseCaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? securityCode = freezed,
  }) {
    return _then(_value.copyWith(
      securityCode: freezed == securityCode
          ? _value.securityCode
          : securityCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConfirmPhoneRequestDtoUseCaseCopyWith<$Res>
    implements $ConfirmPhoneRequestDtoUseCaseCopyWith<$Res> {
  factory _$$_ConfirmPhoneRequestDtoUseCaseCopyWith(
          _$_ConfirmPhoneRequestDtoUseCase value,
          $Res Function(_$_ConfirmPhoneRequestDtoUseCase) then) =
      __$$_ConfirmPhoneRequestDtoUseCaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? securityCode});
}

/// @nodoc
class __$$_ConfirmPhoneRequestDtoUseCaseCopyWithImpl<$Res>
    extends _$ConfirmPhoneRequestDtoUseCaseCopyWithImpl<$Res,
        _$_ConfirmPhoneRequestDtoUseCase>
    implements _$$_ConfirmPhoneRequestDtoUseCaseCopyWith<$Res> {
  __$$_ConfirmPhoneRequestDtoUseCaseCopyWithImpl(
      _$_ConfirmPhoneRequestDtoUseCase _value,
      $Res Function(_$_ConfirmPhoneRequestDtoUseCase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? securityCode = freezed,
  }) {
    return _then(_$_ConfirmPhoneRequestDtoUseCase(
      securityCode: freezed == securityCode
          ? _value.securityCode
          : securityCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConfirmPhoneRequestDtoUseCase
    with DiagnosticableTreeMixin
    implements _ConfirmPhoneRequestDtoUseCase {
  const _$_ConfirmPhoneRequestDtoUseCase({this.securityCode});

  factory _$_ConfirmPhoneRequestDtoUseCase.fromJson(
          Map<String, dynamic> json) =>
      _$$_ConfirmPhoneRequestDtoUseCaseFromJson(json);

  @override
  final String? securityCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConfirmPhoneRequestDtoUseCase(securityCode: $securityCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConfirmPhoneRequestDtoUseCase'))
      ..add(DiagnosticsProperty('securityCode', securityCode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConfirmPhoneRequestDtoUseCase &&
            (identical(other.securityCode, securityCode) ||
                other.securityCode == securityCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, securityCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConfirmPhoneRequestDtoUseCaseCopyWith<_$_ConfirmPhoneRequestDtoUseCase>
      get copyWith => __$$_ConfirmPhoneRequestDtoUseCaseCopyWithImpl<
          _$_ConfirmPhoneRequestDtoUseCase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConfirmPhoneRequestDtoUseCaseToJson(
      this,
    );
  }
}

abstract class _ConfirmPhoneRequestDtoUseCase
    implements ConfirmPhoneRequestDtoUseCase {
  const factory _ConfirmPhoneRequestDtoUseCase({final String? securityCode}) =
      _$_ConfirmPhoneRequestDtoUseCase;

  factory _ConfirmPhoneRequestDtoUseCase.fromJson(Map<String, dynamic> json) =
      _$_ConfirmPhoneRequestDtoUseCase.fromJson;

  @override
  String? get securityCode;
  @override
  @JsonKey(ignore: true)
  _$$_ConfirmPhoneRequestDtoUseCaseCopyWith<_$_ConfirmPhoneRequestDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}
