// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ResetPassRequestDtoUseCase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResetPassRequestDtoUseCase _$ResetPassRequestDtoUseCaseFromJson(
    Map<String, dynamic> json) {
  return _ResetPassRequestDtoUseCase.fromJson(json);
}

/// @nodoc
mixin _$ResetPassRequestDtoUseCase {
  String? get userName => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get retypePassword => throw _privateConstructorUsedError;
  String? get securityCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResetPassRequestDtoUseCaseCopyWith<ResetPassRequestDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPassRequestDtoUseCaseCopyWith<$Res> {
  factory $ResetPassRequestDtoUseCaseCopyWith(ResetPassRequestDtoUseCase value,
          $Res Function(ResetPassRequestDtoUseCase) then) =
      _$ResetPassRequestDtoUseCaseCopyWithImpl<$Res,
          ResetPassRequestDtoUseCase>;
  @useResult
  $Res call(
      {String? userName,
      String? password,
      String? retypePassword,
      String? securityCode});
}

/// @nodoc
class _$ResetPassRequestDtoUseCaseCopyWithImpl<$Res,
        $Val extends ResetPassRequestDtoUseCase>
    implements $ResetPassRequestDtoUseCaseCopyWith<$Res> {
  _$ResetPassRequestDtoUseCaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? password = freezed,
    Object? retypePassword = freezed,
    Object? securityCode = freezed,
  }) {
    return _then(_value.copyWith(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      retypePassword: freezed == retypePassword
          ? _value.retypePassword
          : retypePassword // ignore: cast_nullable_to_non_nullable
              as String?,
      securityCode: freezed == securityCode
          ? _value.securityCode
          : securityCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResetPassRequestDtoUseCaseCopyWith<$Res>
    implements $ResetPassRequestDtoUseCaseCopyWith<$Res> {
  factory _$$_ResetPassRequestDtoUseCaseCopyWith(
          _$_ResetPassRequestDtoUseCase value,
          $Res Function(_$_ResetPassRequestDtoUseCase) then) =
      __$$_ResetPassRequestDtoUseCaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userName,
      String? password,
      String? retypePassword,
      String? securityCode});
}

/// @nodoc
class __$$_ResetPassRequestDtoUseCaseCopyWithImpl<$Res>
    extends _$ResetPassRequestDtoUseCaseCopyWithImpl<$Res,
        _$_ResetPassRequestDtoUseCase>
    implements _$$_ResetPassRequestDtoUseCaseCopyWith<$Res> {
  __$$_ResetPassRequestDtoUseCaseCopyWithImpl(
      _$_ResetPassRequestDtoUseCase _value,
      $Res Function(_$_ResetPassRequestDtoUseCase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? password = freezed,
    Object? retypePassword = freezed,
    Object? securityCode = freezed,
  }) {
    return _then(_$_ResetPassRequestDtoUseCase(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      retypePassword: freezed == retypePassword
          ? _value.retypePassword
          : retypePassword // ignore: cast_nullable_to_non_nullable
              as String?,
      securityCode: freezed == securityCode
          ? _value.securityCode
          : securityCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResetPassRequestDtoUseCase
    with DiagnosticableTreeMixin
    implements _ResetPassRequestDtoUseCase {
  const _$_ResetPassRequestDtoUseCase(
      {this.userName, this.password, this.retypePassword, this.securityCode});

  factory _$_ResetPassRequestDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$$_ResetPassRequestDtoUseCaseFromJson(json);

  @override
  final String? userName;
  @override
  final String? password;
  @override
  final String? retypePassword;
  @override
  final String? securityCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResetPassRequestDtoUseCase(userName: $userName, password: $password, retypePassword: $retypePassword, securityCode: $securityCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResetPassRequestDtoUseCase'))
      ..add(DiagnosticsProperty('userName', userName))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('retypePassword', retypePassword))
      ..add(DiagnosticsProperty('securityCode', securityCode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResetPassRequestDtoUseCase &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.retypePassword, retypePassword) ||
                other.retypePassword == retypePassword) &&
            (identical(other.securityCode, securityCode) ||
                other.securityCode == securityCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, userName, password, retypePassword, securityCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResetPassRequestDtoUseCaseCopyWith<_$_ResetPassRequestDtoUseCase>
      get copyWith => __$$_ResetPassRequestDtoUseCaseCopyWithImpl<
          _$_ResetPassRequestDtoUseCase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResetPassRequestDtoUseCaseToJson(
      this,
    );
  }
}

abstract class _ResetPassRequestDtoUseCase
    implements ResetPassRequestDtoUseCase {
  const factory _ResetPassRequestDtoUseCase(
      {final String? userName,
      final String? password,
      final String? retypePassword,
      final String? securityCode}) = _$_ResetPassRequestDtoUseCase;

  factory _ResetPassRequestDtoUseCase.fromJson(Map<String, dynamic> json) =
      _$_ResetPassRequestDtoUseCase.fromJson;

  @override
  String? get userName;
  @override
  String? get password;
  @override
  String? get retypePassword;
  @override
  String? get securityCode;
  @override
  @JsonKey(ignore: true)
  _$$_ResetPassRequestDtoUseCaseCopyWith<_$_ResetPassRequestDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}
