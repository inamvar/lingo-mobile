// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'LoginRequestDtoUseCase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginRequestDtoUseCase _$LoginRequestDtoUseCaseFromJson(
    Map<String, dynamic> json) {
  return _LoginRequestDtoUseCase.fromJson(json);
}

/// @nodoc
mixin _$LoginRequestDtoUseCase {
  String? get userName => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginRequestDtoUseCaseCopyWith<LoginRequestDtoUseCase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginRequestDtoUseCaseCopyWith<$Res> {
  factory $LoginRequestDtoUseCaseCopyWith(LoginRequestDtoUseCase value,
          $Res Function(LoginRequestDtoUseCase) then) =
      _$LoginRequestDtoUseCaseCopyWithImpl<$Res, LoginRequestDtoUseCase>;
  @useResult
  $Res call({String? userName, String? password});
}

/// @nodoc
class _$LoginRequestDtoUseCaseCopyWithImpl<$Res,
        $Val extends LoginRequestDtoUseCase>
    implements $LoginRequestDtoUseCaseCopyWith<$Res> {
  _$LoginRequestDtoUseCaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? password = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginRequestDtoUseCaseCopyWith<$Res>
    implements $LoginRequestDtoUseCaseCopyWith<$Res> {
  factory _$$_LoginRequestDtoUseCaseCopyWith(_$_LoginRequestDtoUseCase value,
          $Res Function(_$_LoginRequestDtoUseCase) then) =
      __$$_LoginRequestDtoUseCaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? userName, String? password});
}

/// @nodoc
class __$$_LoginRequestDtoUseCaseCopyWithImpl<$Res>
    extends _$LoginRequestDtoUseCaseCopyWithImpl<$Res,
        _$_LoginRequestDtoUseCase>
    implements _$$_LoginRequestDtoUseCaseCopyWith<$Res> {
  __$$_LoginRequestDtoUseCaseCopyWithImpl(_$_LoginRequestDtoUseCase _value,
      $Res Function(_$_LoginRequestDtoUseCase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_LoginRequestDtoUseCase(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginRequestDtoUseCase
    with DiagnosticableTreeMixin
    implements _LoginRequestDtoUseCase {
  const _$_LoginRequestDtoUseCase({this.userName, this.password});

  factory _$_LoginRequestDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$$_LoginRequestDtoUseCaseFromJson(json);

  @override
  final String? userName;
  @override
  final String? password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginRequestDtoUseCase(userName: $userName, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginRequestDtoUseCase'))
      ..add(DiagnosticsProperty('userName', userName))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginRequestDtoUseCase &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userName, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginRequestDtoUseCaseCopyWith<_$_LoginRequestDtoUseCase> get copyWith =>
      __$$_LoginRequestDtoUseCaseCopyWithImpl<_$_LoginRequestDtoUseCase>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginRequestDtoUseCaseToJson(
      this,
    );
  }
}

abstract class _LoginRequestDtoUseCase implements LoginRequestDtoUseCase {
  const factory _LoginRequestDtoUseCase(
      {final String? userName,
      final String? password}) = _$_LoginRequestDtoUseCase;

  factory _LoginRequestDtoUseCase.fromJson(Map<String, dynamic> json) =
      _$_LoginRequestDtoUseCase.fromJson;

  @override
  String? get userName;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$_LoginRequestDtoUseCaseCopyWith<_$_LoginRequestDtoUseCase> get copyWith =>
      throw _privateConstructorUsedError;
}
