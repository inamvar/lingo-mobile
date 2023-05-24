// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'TokenResponseDtoUseCase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenResponseDtoUseCase _$TokenResponseDtoUseCaseFromJson(
    Map<String, dynamic> json) {
  return _TokenResponseDtoUseCase.fromJson(json);
}

/// @nodoc
mixin _$TokenResponseDtoUseCase {
  String? get accessToken => throw _privateConstructorUsedError;
  String? get accessTokenExpiresAt => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;
  String? get refreshTokenExpiresAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenResponseDtoUseCaseCopyWith<TokenResponseDtoUseCase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenResponseDtoUseCaseCopyWith<$Res> {
  factory $TokenResponseDtoUseCaseCopyWith(TokenResponseDtoUseCase value,
          $Res Function(TokenResponseDtoUseCase) then) =
      _$TokenResponseDtoUseCaseCopyWithImpl<$Res, TokenResponseDtoUseCase>;
  @useResult
  $Res call(
      {String? accessToken,
      String? accessTokenExpiresAt,
      String? refreshToken,
      String? refreshTokenExpiresAt});
}

/// @nodoc
class _$TokenResponseDtoUseCaseCopyWithImpl<$Res,
        $Val extends TokenResponseDtoUseCase>
    implements $TokenResponseDtoUseCaseCopyWith<$Res> {
  _$TokenResponseDtoUseCaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? accessTokenExpiresAt = freezed,
    Object? refreshToken = freezed,
    Object? refreshTokenExpiresAt = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      accessTokenExpiresAt: freezed == accessTokenExpiresAt
          ? _value.accessTokenExpiresAt
          : accessTokenExpiresAt // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshTokenExpiresAt: freezed == refreshTokenExpiresAt
          ? _value.refreshTokenExpiresAt
          : refreshTokenExpiresAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TokenResponseDtoUseCaseCopyWith<$Res>
    implements $TokenResponseDtoUseCaseCopyWith<$Res> {
  factory _$$_TokenResponseDtoUseCaseCopyWith(_$_TokenResponseDtoUseCase value,
          $Res Function(_$_TokenResponseDtoUseCase) then) =
      __$$_TokenResponseDtoUseCaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? accessToken,
      String? accessTokenExpiresAt,
      String? refreshToken,
      String? refreshTokenExpiresAt});
}

/// @nodoc
class __$$_TokenResponseDtoUseCaseCopyWithImpl<$Res>
    extends _$TokenResponseDtoUseCaseCopyWithImpl<$Res,
        _$_TokenResponseDtoUseCase>
    implements _$$_TokenResponseDtoUseCaseCopyWith<$Res> {
  __$$_TokenResponseDtoUseCaseCopyWithImpl(_$_TokenResponseDtoUseCase _value,
      $Res Function(_$_TokenResponseDtoUseCase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? accessTokenExpiresAt = freezed,
    Object? refreshToken = freezed,
    Object? refreshTokenExpiresAt = freezed,
  }) {
    return _then(_$_TokenResponseDtoUseCase(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      accessTokenExpiresAt: freezed == accessTokenExpiresAt
          ? _value.accessTokenExpiresAt
          : accessTokenExpiresAt // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshTokenExpiresAt: freezed == refreshTokenExpiresAt
          ? _value.refreshTokenExpiresAt
          : refreshTokenExpiresAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenResponseDtoUseCase
    with DiagnosticableTreeMixin
    implements _TokenResponseDtoUseCase {
  const _$_TokenResponseDtoUseCase(
      {this.accessToken,
      this.accessTokenExpiresAt,
      this.refreshToken,
      this.refreshTokenExpiresAt});

  factory _$_TokenResponseDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$$_TokenResponseDtoUseCaseFromJson(json);

  @override
  final String? accessToken;
  @override
  final String? accessTokenExpiresAt;
  @override
  final String? refreshToken;
  @override
  final String? refreshTokenExpiresAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TokenResponseDtoUseCase(accessToken: $accessToken, accessTokenExpiresAt: $accessTokenExpiresAt, refreshToken: $refreshToken, refreshTokenExpiresAt: $refreshTokenExpiresAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TokenResponseDtoUseCase'))
      ..add(DiagnosticsProperty('accessToken', accessToken))
      ..add(DiagnosticsProperty('accessTokenExpiresAt', accessTokenExpiresAt))
      ..add(DiagnosticsProperty('refreshToken', refreshToken))
      ..add(
          DiagnosticsProperty('refreshTokenExpiresAt', refreshTokenExpiresAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenResponseDtoUseCase &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.accessTokenExpiresAt, accessTokenExpiresAt) ||
                other.accessTokenExpiresAt == accessTokenExpiresAt) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.refreshTokenExpiresAt, refreshTokenExpiresAt) ||
                other.refreshTokenExpiresAt == refreshTokenExpiresAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken,
      accessTokenExpiresAt, refreshToken, refreshTokenExpiresAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokenResponseDtoUseCaseCopyWith<_$_TokenResponseDtoUseCase>
      get copyWith =>
          __$$_TokenResponseDtoUseCaseCopyWithImpl<_$_TokenResponseDtoUseCase>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenResponseDtoUseCaseToJson(
      this,
    );
  }
}

abstract class _TokenResponseDtoUseCase implements TokenResponseDtoUseCase {
  const factory _TokenResponseDtoUseCase(
      {final String? accessToken,
      final String? accessTokenExpiresAt,
      final String? refreshToken,
      final String? refreshTokenExpiresAt}) = _$_TokenResponseDtoUseCase;

  factory _TokenResponseDtoUseCase.fromJson(Map<String, dynamic> json) =
      _$_TokenResponseDtoUseCase.fromJson;

  @override
  String? get accessToken;
  @override
  String? get accessTokenExpiresAt;
  @override
  String? get refreshToken;
  @override
  String? get refreshTokenExpiresAt;
  @override
  @JsonKey(ignore: true)
  _$$_TokenResponseDtoUseCaseCopyWith<_$_TokenResponseDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}
