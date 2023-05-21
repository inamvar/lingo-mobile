// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'RegisterRequestDtoUseCase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterRequestDtoUseCase _$RegisterRequestDtoUseCaseFromJson(
    Map<String, dynamic> json) {
  return _RegisterRequestDtoUseCase.fromJson(json);
}

/// @nodoc
mixin _$RegisterRequestDtoUseCase {
  String? get email => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get confirmPassword => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get marketerCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterRequestDtoUseCaseCopyWith<RegisterRequestDtoUseCase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterRequestDtoUseCaseCopyWith<$Res> {
  factory $RegisterRequestDtoUseCaseCopyWith(RegisterRequestDtoUseCase value,
          $Res Function(RegisterRequestDtoUseCase) then) =
      _$RegisterRequestDtoUseCaseCopyWithImpl<$Res, RegisterRequestDtoUseCase>;
  @useResult
  $Res call(
      {String? email,
      String? phoneNumber,
      String? password,
      String? confirmPassword,
      String? firstName,
      String? lastName,
      String? marketerCode});
}

/// @nodoc
class _$RegisterRequestDtoUseCaseCopyWithImpl<$Res,
        $Val extends RegisterRequestDtoUseCase>
    implements $RegisterRequestDtoUseCaseCopyWith<$Res> {
  _$RegisterRequestDtoUseCaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? marketerCode = freezed,
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
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: freezed == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      marketerCode: freezed == marketerCode
          ? _value.marketerCode
          : marketerCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterRequestDtoUseCaseCopyWith<$Res>
    implements $RegisterRequestDtoUseCaseCopyWith<$Res> {
  factory _$$_RegisterRequestDtoUseCaseCopyWith(
          _$_RegisterRequestDtoUseCase value,
          $Res Function(_$_RegisterRequestDtoUseCase) then) =
      __$$_RegisterRequestDtoUseCaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? email,
      String? phoneNumber,
      String? password,
      String? confirmPassword,
      String? firstName,
      String? lastName,
      String? marketerCode});
}

/// @nodoc
class __$$_RegisterRequestDtoUseCaseCopyWithImpl<$Res>
    extends _$RegisterRequestDtoUseCaseCopyWithImpl<$Res,
        _$_RegisterRequestDtoUseCase>
    implements _$$_RegisterRequestDtoUseCaseCopyWith<$Res> {
  __$$_RegisterRequestDtoUseCaseCopyWithImpl(
      _$_RegisterRequestDtoUseCase _value,
      $Res Function(_$_RegisterRequestDtoUseCase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? marketerCode = freezed,
  }) {
    return _then(_$_RegisterRequestDtoUseCase(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: freezed == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      marketerCode: freezed == marketerCode
          ? _value.marketerCode
          : marketerCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterRequestDtoUseCase
    with DiagnosticableTreeMixin
    implements _RegisterRequestDtoUseCase {
  const _$_RegisterRequestDtoUseCase(
      {this.email,
      this.phoneNumber,
      this.password,
      this.confirmPassword,
      this.firstName,
      this.lastName,
      this.marketerCode});

  factory _$_RegisterRequestDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterRequestDtoUseCaseFromJson(json);

  @override
  final String? email;
  @override
  final String? phoneNumber;
  @override
  final String? password;
  @override
  final String? confirmPassword;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? marketerCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterRequestDtoUseCase(email: $email, phoneNumber: $phoneNumber, password: $password, confirmPassword: $confirmPassword, firstName: $firstName, lastName: $lastName, marketerCode: $marketerCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterRequestDtoUseCase'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('confirmPassword', confirmPassword))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('marketerCode', marketerCode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterRequestDtoUseCase &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.marketerCode, marketerCode) ||
                other.marketerCode == marketerCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, phoneNumber, password,
      confirmPassword, firstName, lastName, marketerCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterRequestDtoUseCaseCopyWith<_$_RegisterRequestDtoUseCase>
      get copyWith => __$$_RegisterRequestDtoUseCaseCopyWithImpl<
          _$_RegisterRequestDtoUseCase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterRequestDtoUseCaseToJson(
      this,
    );
  }
}

abstract class _RegisterRequestDtoUseCase implements RegisterRequestDtoUseCase {
  const factory _RegisterRequestDtoUseCase(
      {final String? email,
      final String? phoneNumber,
      final String? password,
      final String? confirmPassword,
      final String? firstName,
      final String? lastName,
      final String? marketerCode}) = _$_RegisterRequestDtoUseCase;

  factory _RegisterRequestDtoUseCase.fromJson(Map<String, dynamic> json) =
      _$_RegisterRequestDtoUseCase.fromJson;

  @override
  String? get email;
  @override
  String? get phoneNumber;
  @override
  String? get password;
  @override
  String? get confirmPassword;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get marketerCode;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterRequestDtoUseCaseCopyWith<_$_RegisterRequestDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}
