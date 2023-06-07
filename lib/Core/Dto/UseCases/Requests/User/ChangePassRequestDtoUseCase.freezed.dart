// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ChangePassRequestDtoUseCase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChangePassRequestDtoUseCase _$ChangePassRequestDtoUseCaseFromJson(
    Map<String, dynamic> json) {
  return _ChangePassRequestDtoUseCase.fromJson(json);
}

/// @nodoc
mixin _$ChangePassRequestDtoUseCase {
  String? get currentPassword => throw _privateConstructorUsedError;
  String? get newPassword => throw _privateConstructorUsedError;
  String? get confirmNewPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangePassRequestDtoUseCaseCopyWith<ChangePassRequestDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePassRequestDtoUseCaseCopyWith<$Res> {
  factory $ChangePassRequestDtoUseCaseCopyWith(
          ChangePassRequestDtoUseCase value,
          $Res Function(ChangePassRequestDtoUseCase) then) =
      _$ChangePassRequestDtoUseCaseCopyWithImpl<$Res,
          ChangePassRequestDtoUseCase>;
  @useResult
  $Res call(
      {String? currentPassword,
      String? newPassword,
      String? confirmNewPassword});
}

/// @nodoc
class _$ChangePassRequestDtoUseCaseCopyWithImpl<$Res,
        $Val extends ChangePassRequestDtoUseCase>
    implements $ChangePassRequestDtoUseCaseCopyWith<$Res> {
  _$ChangePassRequestDtoUseCaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPassword = freezed,
    Object? newPassword = freezed,
    Object? confirmNewPassword = freezed,
  }) {
    return _then(_value.copyWith(
      currentPassword: freezed == currentPassword
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      newPassword: freezed == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmNewPassword: freezed == confirmNewPassword
          ? _value.confirmNewPassword
          : confirmNewPassword // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChangePassRequestDtoUseCaseCopyWith<$Res>
    implements $ChangePassRequestDtoUseCaseCopyWith<$Res> {
  factory _$$_ChangePassRequestDtoUseCaseCopyWith(
          _$_ChangePassRequestDtoUseCase value,
          $Res Function(_$_ChangePassRequestDtoUseCase) then) =
      __$$_ChangePassRequestDtoUseCaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? currentPassword,
      String? newPassword,
      String? confirmNewPassword});
}

/// @nodoc
class __$$_ChangePassRequestDtoUseCaseCopyWithImpl<$Res>
    extends _$ChangePassRequestDtoUseCaseCopyWithImpl<$Res,
        _$_ChangePassRequestDtoUseCase>
    implements _$$_ChangePassRequestDtoUseCaseCopyWith<$Res> {
  __$$_ChangePassRequestDtoUseCaseCopyWithImpl(
      _$_ChangePassRequestDtoUseCase _value,
      $Res Function(_$_ChangePassRequestDtoUseCase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPassword = freezed,
    Object? newPassword = freezed,
    Object? confirmNewPassword = freezed,
  }) {
    return _then(_$_ChangePassRequestDtoUseCase(
      currentPassword: freezed == currentPassword
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      newPassword: freezed == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmNewPassword: freezed == confirmNewPassword
          ? _value.confirmNewPassword
          : confirmNewPassword // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChangePassRequestDtoUseCase
    with DiagnosticableTreeMixin
    implements _ChangePassRequestDtoUseCase {
  const _$_ChangePassRequestDtoUseCase(
      {this.currentPassword, this.newPassword, this.confirmNewPassword});

  factory _$_ChangePassRequestDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$$_ChangePassRequestDtoUseCaseFromJson(json);

  @override
  final String? currentPassword;
  @override
  final String? newPassword;
  @override
  final String? confirmNewPassword;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChangePassRequestDtoUseCase(currentPassword: $currentPassword, newPassword: $newPassword, confirmNewPassword: $confirmNewPassword)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChangePassRequestDtoUseCase'))
      ..add(DiagnosticsProperty('currentPassword', currentPassword))
      ..add(DiagnosticsProperty('newPassword', newPassword))
      ..add(DiagnosticsProperty('confirmNewPassword', confirmNewPassword));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePassRequestDtoUseCase &&
            (identical(other.currentPassword, currentPassword) ||
                other.currentPassword == currentPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.confirmNewPassword, confirmNewPassword) ||
                other.confirmNewPassword == confirmNewPassword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, currentPassword, newPassword, confirmNewPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePassRequestDtoUseCaseCopyWith<_$_ChangePassRequestDtoUseCase>
      get copyWith => __$$_ChangePassRequestDtoUseCaseCopyWithImpl<
          _$_ChangePassRequestDtoUseCase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChangePassRequestDtoUseCaseToJson(
      this,
    );
  }
}

abstract class _ChangePassRequestDtoUseCase
    implements ChangePassRequestDtoUseCase {
  const factory _ChangePassRequestDtoUseCase(
      {final String? currentPassword,
      final String? newPassword,
      final String? confirmNewPassword}) = _$_ChangePassRequestDtoUseCase;

  factory _ChangePassRequestDtoUseCase.fromJson(Map<String, dynamic> json) =
      _$_ChangePassRequestDtoUseCase.fromJson;

  @override
  String? get currentPassword;
  @override
  String? get newPassword;
  @override
  String? get confirmNewPassword;
  @override
  @JsonKey(ignore: true)
  _$$_ChangePassRequestDtoUseCaseCopyWith<_$_ChangePassRequestDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}
