// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'RegisterResponseDtoUseCase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterResponseDtoUseCase _$RegisterResponseDtoUseCaseFromJson(
    Map<String, dynamic> json) {
  return _RegisterResponseDtoUseCase.fromJson(json);
}

/// @nodoc
mixin _$RegisterResponseDtoUseCase {
  String? get email => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  TokenResponseDtoUseCase? get authToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterResponseDtoUseCaseCopyWith<RegisterResponseDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterResponseDtoUseCaseCopyWith<$Res> {
  factory $RegisterResponseDtoUseCaseCopyWith(RegisterResponseDtoUseCase value,
          $Res Function(RegisterResponseDtoUseCase) then) =
      _$RegisterResponseDtoUseCaseCopyWithImpl<$Res,
          RegisterResponseDtoUseCase>;
  @useResult
  $Res call(
      {String? email,
      String? phoneNumber,
      String? firstName,
      String? lastName,
      TokenResponseDtoUseCase? authToken});

  $TokenResponseDtoUseCaseCopyWith<$Res>? get authToken;
}

/// @nodoc
class _$RegisterResponseDtoUseCaseCopyWithImpl<$Res,
        $Val extends RegisterResponseDtoUseCase>
    implements $RegisterResponseDtoUseCaseCopyWith<$Res> {
  _$RegisterResponseDtoUseCaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? authToken = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      authToken: freezed == authToken
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as TokenResponseDtoUseCase?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenResponseDtoUseCaseCopyWith<$Res>? get authToken {
    if (_value.authToken == null) {
      return null;
    }

    return $TokenResponseDtoUseCaseCopyWith<$Res>(_value.authToken!, (value) {
      return _then(_value.copyWith(authToken: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RegisterResponseDtoUseCaseCopyWith<$Res>
    implements $RegisterResponseDtoUseCaseCopyWith<$Res> {
  factory _$$_RegisterResponseDtoUseCaseCopyWith(
          _$_RegisterResponseDtoUseCase value,
          $Res Function(_$_RegisterResponseDtoUseCase) then) =
      __$$_RegisterResponseDtoUseCaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? email,
      String? phoneNumber,
      String? firstName,
      String? lastName,
      TokenResponseDtoUseCase? authToken});

  @override
  $TokenResponseDtoUseCaseCopyWith<$Res>? get authToken;
}

/// @nodoc
class __$$_RegisterResponseDtoUseCaseCopyWithImpl<$Res>
    extends _$RegisterResponseDtoUseCaseCopyWithImpl<$Res,
        _$_RegisterResponseDtoUseCase>
    implements _$$_RegisterResponseDtoUseCaseCopyWith<$Res> {
  __$$_RegisterResponseDtoUseCaseCopyWithImpl(
      _$_RegisterResponseDtoUseCase _value,
      $Res Function(_$_RegisterResponseDtoUseCase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? authToken = freezed,
  }) {
    return _then(_$_RegisterResponseDtoUseCase(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      authToken: freezed == authToken
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as TokenResponseDtoUseCase?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterResponseDtoUseCase
    with DiagnosticableTreeMixin
    implements _RegisterResponseDtoUseCase {
  const _$_RegisterResponseDtoUseCase(
      {this.email,
      this.phoneNumber,
      this.firstName,
      this.lastName,
      this.authToken});

  factory _$_RegisterResponseDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterResponseDtoUseCaseFromJson(json);

  @override
  final String? email;
  @override
  final String? phoneNumber;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final TokenResponseDtoUseCase? authToken;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterResponseDtoUseCase(email: $email, phoneNumber: $phoneNumber, firstName: $firstName, lastName: $lastName, authToken: $authToken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterResponseDtoUseCase'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('authToken', authToken));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterResponseDtoUseCase &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.authToken, authToken) ||
                other.authToken == authToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, email, phoneNumber, firstName, lastName, authToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterResponseDtoUseCaseCopyWith<_$_RegisterResponseDtoUseCase>
      get copyWith => __$$_RegisterResponseDtoUseCaseCopyWithImpl<
          _$_RegisterResponseDtoUseCase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterResponseDtoUseCaseToJson(
      this,
    );
  }
}

abstract class _RegisterResponseDtoUseCase
    implements RegisterResponseDtoUseCase {
  const factory _RegisterResponseDtoUseCase(
          {final String? email,
          final String? phoneNumber,
          final String? firstName,
          final String? lastName,
          final TokenResponseDtoUseCase? authToken}) =
      _$_RegisterResponseDtoUseCase;

  factory _RegisterResponseDtoUseCase.fromJson(Map<String, dynamic> json) =
      _$_RegisterResponseDtoUseCase.fromJson;

  @override
  String? get email;
  @override
  String? get phoneNumber;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  TokenResponseDtoUseCase? get authToken;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterResponseDtoUseCaseCopyWith<_$_RegisterResponseDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}
