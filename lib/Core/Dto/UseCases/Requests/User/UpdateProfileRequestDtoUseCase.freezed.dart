// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'UpdateProfileRequestDtoUseCase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateProfileRequestDtoUseCase _$UpdateProfileRequestDtoUseCaseFromJson(
    Map<String, dynamic> json) {
  return _UpdateProfileRequestDtoUseCase.fromJson(json);
}

/// @nodoc
mixin _$UpdateProfileRequestDtoUseCase {
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateProfileRequestDtoUseCaseCopyWith<UpdateProfileRequestDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileRequestDtoUseCaseCopyWith<$Res> {
  factory $UpdateProfileRequestDtoUseCaseCopyWith(
          UpdateProfileRequestDtoUseCase value,
          $Res Function(UpdateProfileRequestDtoUseCase) then) =
      _$UpdateProfileRequestDtoUseCaseCopyWithImpl<$Res,
          UpdateProfileRequestDtoUseCase>;
  @useResult
  $Res call({String? firstName, String? lastName, String? phoneNumber});
}

/// @nodoc
class _$UpdateProfileRequestDtoUseCaseCopyWithImpl<$Res,
        $Val extends UpdateProfileRequestDtoUseCase>
    implements $UpdateProfileRequestDtoUseCaseCopyWith<$Res> {
  _$UpdateProfileRequestDtoUseCaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateProfileRequestDtoUseCaseCopyWith<$Res>
    implements $UpdateProfileRequestDtoUseCaseCopyWith<$Res> {
  factory _$$_UpdateProfileRequestDtoUseCaseCopyWith(
          _$_UpdateProfileRequestDtoUseCase value,
          $Res Function(_$_UpdateProfileRequestDtoUseCase) then) =
      __$$_UpdateProfileRequestDtoUseCaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? firstName, String? lastName, String? phoneNumber});
}

/// @nodoc
class __$$_UpdateProfileRequestDtoUseCaseCopyWithImpl<$Res>
    extends _$UpdateProfileRequestDtoUseCaseCopyWithImpl<$Res,
        _$_UpdateProfileRequestDtoUseCase>
    implements _$$_UpdateProfileRequestDtoUseCaseCopyWith<$Res> {
  __$$_UpdateProfileRequestDtoUseCaseCopyWithImpl(
      _$_UpdateProfileRequestDtoUseCase _value,
      $Res Function(_$_UpdateProfileRequestDtoUseCase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$_UpdateProfileRequestDtoUseCase(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateProfileRequestDtoUseCase
    with DiagnosticableTreeMixin
    implements _UpdateProfileRequestDtoUseCase {
  const _$_UpdateProfileRequestDtoUseCase(
      {this.firstName, this.lastName, this.phoneNumber});

  factory _$_UpdateProfileRequestDtoUseCase.fromJson(
          Map<String, dynamic> json) =>
      _$$_UpdateProfileRequestDtoUseCaseFromJson(json);

  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? phoneNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateProfileRequestDtoUseCase(firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateProfileRequestDtoUseCase'))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateProfileRequestDtoUseCase &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, firstName, lastName, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateProfileRequestDtoUseCaseCopyWith<_$_UpdateProfileRequestDtoUseCase>
      get copyWith => __$$_UpdateProfileRequestDtoUseCaseCopyWithImpl<
          _$_UpdateProfileRequestDtoUseCase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateProfileRequestDtoUseCaseToJson(
      this,
    );
  }
}

abstract class _UpdateProfileRequestDtoUseCase
    implements UpdateProfileRequestDtoUseCase {
  const factory _UpdateProfileRequestDtoUseCase(
      {final String? firstName,
      final String? lastName,
      final String? phoneNumber}) = _$_UpdateProfileRequestDtoUseCase;

  factory _UpdateProfileRequestDtoUseCase.fromJson(Map<String, dynamic> json) =
      _$_UpdateProfileRequestDtoUseCase.fromJson;

  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateProfileRequestDtoUseCaseCopyWith<_$_UpdateProfileRequestDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}
