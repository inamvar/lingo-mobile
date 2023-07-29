// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'PaginationRequestDtoUseCase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginationRequestDtoUseCase _$PaginationRequestDtoUseCaseFromJson(
    Map<String, dynamic> json) {
  return _PaginationRequestDtoUseCase.fromJson(json);
}

/// @nodoc
mixin _$PaginationRequestDtoUseCase {
  int? get pageNumber => throw _privateConstructorUsedError;
  int? get pageSize => throw _privateConstructorUsedError;
  String? get filter => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationRequestDtoUseCaseCopyWith<PaginationRequestDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationRequestDtoUseCaseCopyWith<$Res> {
  factory $PaginationRequestDtoUseCaseCopyWith(
          PaginationRequestDtoUseCase value,
          $Res Function(PaginationRequestDtoUseCase) then) =
      _$PaginationRequestDtoUseCaseCopyWithImpl<$Res,
          PaginationRequestDtoUseCase>;
  @useResult
  $Res call({int? pageNumber, int? pageSize, String? filter, String? path});
}

/// @nodoc
class _$PaginationRequestDtoUseCaseCopyWithImpl<$Res,
        $Val extends PaginationRequestDtoUseCase>
    implements $PaginationRequestDtoUseCaseCopyWith<$Res> {
  _$PaginationRequestDtoUseCaseCopyWithImpl(this._value, this._then);

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
abstract class _$$_PaginationRequestDtoUseCaseCopyWith<$Res>
    implements $PaginationRequestDtoUseCaseCopyWith<$Res> {
  factory _$$_PaginationRequestDtoUseCaseCopyWith(
          _$_PaginationRequestDtoUseCase value,
          $Res Function(_$_PaginationRequestDtoUseCase) then) =
      __$$_PaginationRequestDtoUseCaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? pageNumber, int? pageSize, String? filter, String? path});
}

/// @nodoc
class __$$_PaginationRequestDtoUseCaseCopyWithImpl<$Res>
    extends _$PaginationRequestDtoUseCaseCopyWithImpl<$Res,
        _$_PaginationRequestDtoUseCase>
    implements _$$_PaginationRequestDtoUseCaseCopyWith<$Res> {
  __$$_PaginationRequestDtoUseCaseCopyWithImpl(
      _$_PaginationRequestDtoUseCase _value,
      $Res Function(_$_PaginationRequestDtoUseCase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNumber = freezed,
    Object? pageSize = freezed,
    Object? filter = freezed,
    Object? path = freezed,
  }) {
    return _then(_$_PaginationRequestDtoUseCase(
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
class _$_PaginationRequestDtoUseCase
    with DiagnosticableTreeMixin
    implements _PaginationRequestDtoUseCase {
  const _$_PaginationRequestDtoUseCase(
      {this.pageNumber, this.pageSize, this.filter, this.path});

  factory _$_PaginationRequestDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$$_PaginationRequestDtoUseCaseFromJson(json);

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
    return 'PaginationRequestDtoUseCase(pageNumber: $pageNumber, pageSize: $pageSize, filter: $filter, path: $path)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaginationRequestDtoUseCase'))
      ..add(DiagnosticsProperty('pageNumber', pageNumber))
      ..add(DiagnosticsProperty('pageSize', pageSize))
      ..add(DiagnosticsProperty('filter', filter))
      ..add(DiagnosticsProperty('path', path));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginationRequestDtoUseCase &&
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
  _$$_PaginationRequestDtoUseCaseCopyWith<_$_PaginationRequestDtoUseCase>
      get copyWith => __$$_PaginationRequestDtoUseCaseCopyWithImpl<
          _$_PaginationRequestDtoUseCase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginationRequestDtoUseCaseToJson(
      this,
    );
  }
}

abstract class _PaginationRequestDtoUseCase
    implements PaginationRequestDtoUseCase {
  const factory _PaginationRequestDtoUseCase(
      {final int? pageNumber,
      final int? pageSize,
      final String? filter,
      final String? path}) = _$_PaginationRequestDtoUseCase;

  factory _PaginationRequestDtoUseCase.fromJson(Map<String, dynamic> json) =
      _$_PaginationRequestDtoUseCase.fromJson;

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
  _$$_PaginationRequestDtoUseCaseCopyWith<_$_PaginationRequestDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}
