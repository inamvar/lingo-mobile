// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'CreateOrderRequestDtoUseCase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateOrderRequestDtoUseCase _$CreateOrderRequestDtoUseCaseFromJson(
    Map<String, dynamic> json) {
  return _CreateOrderRequestDtoUseCase.fromJson(json);
}

/// @nodoc
mixin _$CreateOrderRequestDtoUseCase {
  String? get courseId => throw _privateConstructorUsedError;
  int? get currencyType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateOrderRequestDtoUseCaseCopyWith<CreateOrderRequestDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOrderRequestDtoUseCaseCopyWith<$Res> {
  factory $CreateOrderRequestDtoUseCaseCopyWith(
          CreateOrderRequestDtoUseCase value,
          $Res Function(CreateOrderRequestDtoUseCase) then) =
      _$CreateOrderRequestDtoUseCaseCopyWithImpl<$Res,
          CreateOrderRequestDtoUseCase>;
  @useResult
  $Res call({String? courseId, int? currencyType});
}

/// @nodoc
class _$CreateOrderRequestDtoUseCaseCopyWithImpl<$Res,
        $Val extends CreateOrderRequestDtoUseCase>
    implements $CreateOrderRequestDtoUseCaseCopyWith<$Res> {
  _$CreateOrderRequestDtoUseCaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = freezed,
    Object? currencyType = freezed,
  }) {
    return _then(_value.copyWith(
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyType: freezed == currencyType
          ? _value.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateOrderRequestDtoUseCaseCopyWith<$Res>
    implements $CreateOrderRequestDtoUseCaseCopyWith<$Res> {
  factory _$$_CreateOrderRequestDtoUseCaseCopyWith(
          _$_CreateOrderRequestDtoUseCase value,
          $Res Function(_$_CreateOrderRequestDtoUseCase) then) =
      __$$_CreateOrderRequestDtoUseCaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? courseId, int? currencyType});
}

/// @nodoc
class __$$_CreateOrderRequestDtoUseCaseCopyWithImpl<$Res>
    extends _$CreateOrderRequestDtoUseCaseCopyWithImpl<$Res,
        _$_CreateOrderRequestDtoUseCase>
    implements _$$_CreateOrderRequestDtoUseCaseCopyWith<$Res> {
  __$$_CreateOrderRequestDtoUseCaseCopyWithImpl(
      _$_CreateOrderRequestDtoUseCase _value,
      $Res Function(_$_CreateOrderRequestDtoUseCase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = freezed,
    Object? currencyType = freezed,
  }) {
    return _then(_$_CreateOrderRequestDtoUseCase(
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyType: freezed == currencyType
          ? _value.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateOrderRequestDtoUseCase
    with DiagnosticableTreeMixin
    implements _CreateOrderRequestDtoUseCase {
  const _$_CreateOrderRequestDtoUseCase({this.courseId, this.currencyType});

  factory _$_CreateOrderRequestDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$$_CreateOrderRequestDtoUseCaseFromJson(json);

  @override
  final String? courseId;
  @override
  final int? currencyType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateOrderRequestDtoUseCase(courseId: $courseId, currencyType: $currencyType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateOrderRequestDtoUseCase'))
      ..add(DiagnosticsProperty('courseId', courseId))
      ..add(DiagnosticsProperty('currencyType', currencyType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateOrderRequestDtoUseCase &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.currencyType, currencyType) ||
                other.currencyType == currencyType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, courseId, currencyType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateOrderRequestDtoUseCaseCopyWith<_$_CreateOrderRequestDtoUseCase>
      get copyWith => __$$_CreateOrderRequestDtoUseCaseCopyWithImpl<
          _$_CreateOrderRequestDtoUseCase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateOrderRequestDtoUseCaseToJson(
      this,
    );
  }
}

abstract class _CreateOrderRequestDtoUseCase
    implements CreateOrderRequestDtoUseCase {
  const factory _CreateOrderRequestDtoUseCase(
      {final String? courseId,
      final int? currencyType}) = _$_CreateOrderRequestDtoUseCase;

  factory _CreateOrderRequestDtoUseCase.fromJson(Map<String, dynamic> json) =
      _$_CreateOrderRequestDtoUseCase.fromJson;

  @override
  String? get courseId;
  @override
  int? get currencyType;
  @override
  @JsonKey(ignore: true)
  _$$_CreateOrderRequestDtoUseCaseCopyWith<_$_CreateOrderRequestDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}
