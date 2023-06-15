// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'GetPackagesRequestDtoUseCase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetPackagesRequestDtoUseCase _$GetPackagesRequestDtoUseCaseFromJson(
    Map<String, dynamic> json) {
  return _GetPackagesRequestDtoUseCase.fromJson(json);
}

/// @nodoc
mixin _$GetPackagesRequestDtoUseCase {
  int? get pageNumber => throw _privateConstructorUsedError;
  int? get pageSize => throw _privateConstructorUsedError;
  String? get filter => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPackagesRequestDtoUseCaseCopyWith<GetPackagesRequestDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPackagesRequestDtoUseCaseCopyWith<$Res> {
  factory $GetPackagesRequestDtoUseCaseCopyWith(
          GetPackagesRequestDtoUseCase value,
          $Res Function(GetPackagesRequestDtoUseCase) then) =
      _$GetPackagesRequestDtoUseCaseCopyWithImpl<$Res,
          GetPackagesRequestDtoUseCase>;
  @useResult
  $Res call({int? pageNumber, int? pageSize, String? filter, String? path});
}

/// @nodoc
class _$GetPackagesRequestDtoUseCaseCopyWithImpl<$Res,
        $Val extends GetPackagesRequestDtoUseCase>
    implements $GetPackagesRequestDtoUseCaseCopyWith<$Res> {
  _$GetPackagesRequestDtoUseCaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNumber = freezed,
    Object? pageSize = freezed,
    Object? filter = freezed,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      pageNumber: freezed == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetPackagesRequestDtoUseCaseCopyWith<$Res>
    implements $GetPackagesRequestDtoUseCaseCopyWith<$Res> {
  factory _$$_GetPackagesRequestDtoUseCaseCopyWith(
          _$_GetPackagesRequestDtoUseCase value,
          $Res Function(_$_GetPackagesRequestDtoUseCase) then) =
      __$$_GetPackagesRequestDtoUseCaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? pageNumber, int? pageSize, String? filter, String? path});
}

/// @nodoc
class __$$_GetPackagesRequestDtoUseCaseCopyWithImpl<$Res>
    extends _$GetPackagesRequestDtoUseCaseCopyWithImpl<$Res,
        _$_GetPackagesRequestDtoUseCase>
    implements _$$_GetPackagesRequestDtoUseCaseCopyWith<$Res> {
  __$$_GetPackagesRequestDtoUseCaseCopyWithImpl(
      _$_GetPackagesRequestDtoUseCase _value,
      $Res Function(_$_GetPackagesRequestDtoUseCase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNumber = freezed,
    Object? pageSize = freezed,
    Object? filter = freezed,
    Object? path = freezed,
  }) {
    return _then(_$_GetPackagesRequestDtoUseCase(
      pageNumber: freezed == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetPackagesRequestDtoUseCase
    with DiagnosticableTreeMixin
    implements _GetPackagesRequestDtoUseCase {
  const _$_GetPackagesRequestDtoUseCase(
      {this.pageNumber, this.pageSize, this.filter, this.path});

  factory _$_GetPackagesRequestDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$$_GetPackagesRequestDtoUseCaseFromJson(json);

  @override
  final int? pageNumber;
  @override
  final int? pageSize;
  @override
  final String? filter;
  @override
  final String? path;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetPackagesRequestDtoUseCase(pageNumber: $pageNumber, pageSize: $pageSize, filter: $filter, path: $path)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetPackagesRequestDtoUseCase'))
      ..add(DiagnosticsProperty('pageNumber', pageNumber))
      ..add(DiagnosticsProperty('pageSize', pageSize))
      ..add(DiagnosticsProperty('filter', filter))
      ..add(DiagnosticsProperty('path', path));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPackagesRequestDtoUseCase &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, pageNumber, pageSize, filter, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetPackagesRequestDtoUseCaseCopyWith<_$_GetPackagesRequestDtoUseCase>
      get copyWith => __$$_GetPackagesRequestDtoUseCaseCopyWithImpl<
          _$_GetPackagesRequestDtoUseCase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetPackagesRequestDtoUseCaseToJson(
      this,
    );
  }
}

abstract class _GetPackagesRequestDtoUseCase
    implements GetPackagesRequestDtoUseCase {
  const factory _GetPackagesRequestDtoUseCase(
      {final int? pageNumber,
      final int? pageSize,
      final String? filter,
      final String? path}) = _$_GetPackagesRequestDtoUseCase;

  factory _GetPackagesRequestDtoUseCase.fromJson(Map<String, dynamic> json) =
      _$_GetPackagesRequestDtoUseCase.fromJson;

  @override
  int? get pageNumber;
  @override
  int? get pageSize;
  @override
  String? get filter;
  @override
  String? get path;
  @override
  @JsonKey(ignore: true)
  _$$_GetPackagesRequestDtoUseCaseCopyWith<_$_GetPackagesRequestDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}
