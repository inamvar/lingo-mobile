// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ForgotPassRequestDtoUseCase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForgotPassRequestDtoUseCase _$ForgotPassRequestDtoUseCaseFromJson(
    Map<String, dynamic> json) {
  return _ForgotPassRequestDtoUseCase.fromJson(json);
}

/// @nodoc
mixin _$ForgotPassRequestDtoUseCase {
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgotPassRequestDtoUseCaseCopyWith<ForgotPassRequestDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPassRequestDtoUseCaseCopyWith<$Res> {
  factory $ForgotPassRequestDtoUseCaseCopyWith(
          ForgotPassRequestDtoUseCase value,
          $Res Function(ForgotPassRequestDtoUseCase) then) =
      _$ForgotPassRequestDtoUseCaseCopyWithImpl<$Res,
          ForgotPassRequestDtoUseCase>;
  @useResult
  $Res call({String? email});
}

/// @nodoc
class _$ForgotPassRequestDtoUseCaseCopyWithImpl<$Res,
        $Val extends ForgotPassRequestDtoUseCase>
    implements $ForgotPassRequestDtoUseCaseCopyWith<$Res> {
  _$ForgotPassRequestDtoUseCaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ForgotPassRequestDtoUseCaseCopyWith<$Res>
    implements $ForgotPassRequestDtoUseCaseCopyWith<$Res> {
  factory _$$_ForgotPassRequestDtoUseCaseCopyWith(
          _$_ForgotPassRequestDtoUseCase value,
          $Res Function(_$_ForgotPassRequestDtoUseCase) then) =
      __$$_ForgotPassRequestDtoUseCaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email});
}

/// @nodoc
class __$$_ForgotPassRequestDtoUseCaseCopyWithImpl<$Res>
    extends _$ForgotPassRequestDtoUseCaseCopyWithImpl<$Res,
        _$_ForgotPassRequestDtoUseCase>
    implements _$$_ForgotPassRequestDtoUseCaseCopyWith<$Res> {
  __$$_ForgotPassRequestDtoUseCaseCopyWithImpl(
      _$_ForgotPassRequestDtoUseCase _value,
      $Res Function(_$_ForgotPassRequestDtoUseCase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$_ForgotPassRequestDtoUseCase(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ForgotPassRequestDtoUseCase
    with DiagnosticableTreeMixin
    implements _ForgotPassRequestDtoUseCase {
  const _$_ForgotPassRequestDtoUseCase({this.email});

  factory _$_ForgotPassRequestDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$$_ForgotPassRequestDtoUseCaseFromJson(json);

  @override
  final String? email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ForgotPassRequestDtoUseCase(email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ForgotPassRequestDtoUseCase'))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForgotPassRequestDtoUseCase &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForgotPassRequestDtoUseCaseCopyWith<_$_ForgotPassRequestDtoUseCase>
      get copyWith => __$$_ForgotPassRequestDtoUseCaseCopyWithImpl<
          _$_ForgotPassRequestDtoUseCase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForgotPassRequestDtoUseCaseToJson(
      this,
    );
  }
}

abstract class _ForgotPassRequestDtoUseCase
    implements ForgotPassRequestDtoUseCase {
  const factory _ForgotPassRequestDtoUseCase({final String? email}) =
      _$_ForgotPassRequestDtoUseCase;

  factory _ForgotPassRequestDtoUseCase.fromJson(Map<String, dynamic> json) =
      _$_ForgotPassRequestDtoUseCase.fromJson;

  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$_ForgotPassRequestDtoUseCaseCopyWith<_$_ForgotPassRequestDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}
