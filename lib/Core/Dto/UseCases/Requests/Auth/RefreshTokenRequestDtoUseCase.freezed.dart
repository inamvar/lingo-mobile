// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'RefreshTokenRequestDtoUseCase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RefreshTokenRequestDtoUseCase _$RefreshTokenRequestDtoUseCaseFromJson(
    Map<String, dynamic> json) {
  return _RefreshTokenRequestDtoUseCase.fromJson(json);
}

/// @nodoc
mixin _$RefreshTokenRequestDtoUseCase {
  String? get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RefreshTokenRequestDtoUseCaseCopyWith<RefreshTokenRequestDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshTokenRequestDtoUseCaseCopyWith<$Res> {
  factory $RefreshTokenRequestDtoUseCaseCopyWith(
          RefreshTokenRequestDtoUseCase value,
          $Res Function(RefreshTokenRequestDtoUseCase) then) =
      _$RefreshTokenRequestDtoUseCaseCopyWithImpl<$Res,
          RefreshTokenRequestDtoUseCase>;
  @useResult
  $Res call({String? refreshToken});
}

/// @nodoc
class _$RefreshTokenRequestDtoUseCaseCopyWithImpl<$Res,
        $Val extends RefreshTokenRequestDtoUseCase>
    implements $RefreshTokenRequestDtoUseCaseCopyWith<$Res> {
  _$RefreshTokenRequestDtoUseCaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RefreshTokenRequestDtoUseCaseCopyWith<$Res>
    implements $RefreshTokenRequestDtoUseCaseCopyWith<$Res> {
  factory _$$_RefreshTokenRequestDtoUseCaseCopyWith(
          _$_RefreshTokenRequestDtoUseCase value,
          $Res Function(_$_RefreshTokenRequestDtoUseCase) then) =
      __$$_RefreshTokenRequestDtoUseCaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? refreshToken});
}

/// @nodoc
class __$$_RefreshTokenRequestDtoUseCaseCopyWithImpl<$Res>
    extends _$RefreshTokenRequestDtoUseCaseCopyWithImpl<$Res,
        _$_RefreshTokenRequestDtoUseCase>
    implements _$$_RefreshTokenRequestDtoUseCaseCopyWith<$Res> {
  __$$_RefreshTokenRequestDtoUseCaseCopyWithImpl(
      _$_RefreshTokenRequestDtoUseCase _value,
      $Res Function(_$_RefreshTokenRequestDtoUseCase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = freezed,
  }) {
    return _then(_$_RefreshTokenRequestDtoUseCase(
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RefreshTokenRequestDtoUseCase
    with DiagnosticableTreeMixin
    implements _RefreshTokenRequestDtoUseCase {
  const _$_RefreshTokenRequestDtoUseCase({this.refreshToken});

  factory _$_RefreshTokenRequestDtoUseCase.fromJson(
          Map<String, dynamic> json) =>
      _$$_RefreshTokenRequestDtoUseCaseFromJson(json);

  @override
  final String? refreshToken;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RefreshTokenRequestDtoUseCase(refreshToken: $refreshToken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RefreshTokenRequestDtoUseCase'))
      ..add(DiagnosticsProperty('refreshToken', refreshToken));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RefreshTokenRequestDtoUseCase &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RefreshTokenRequestDtoUseCaseCopyWith<_$_RefreshTokenRequestDtoUseCase>
      get copyWith => __$$_RefreshTokenRequestDtoUseCaseCopyWithImpl<
          _$_RefreshTokenRequestDtoUseCase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RefreshTokenRequestDtoUseCaseToJson(
      this,
    );
  }
}

abstract class _RefreshTokenRequestDtoUseCase
    implements RefreshTokenRequestDtoUseCase {
  const factory _RefreshTokenRequestDtoUseCase({final String? refreshToken}) =
      _$_RefreshTokenRequestDtoUseCase;

  factory _RefreshTokenRequestDtoUseCase.fromJson(Map<String, dynamic> json) =
      _$_RefreshTokenRequestDtoUseCase.fromJson;

  @override
  String? get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$_RefreshTokenRequestDtoUseCaseCopyWith<_$_RefreshTokenRequestDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}
