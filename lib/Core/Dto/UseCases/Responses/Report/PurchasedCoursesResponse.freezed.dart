// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'PurchasedCoursesResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PurchasedCoursesResponse _$PurchasedCoursesResponseFromJson(
    Map<String, dynamic> json) {
  return _PurchasedCoursesResponse.fromJson(json);
}

/// @nodoc
mixin _$PurchasedCoursesResponse {
  List<PurchasedCourse>? get data => throw _privateConstructorUsedError;
  int? get pageNumber => throw _privateConstructorUsedError;
  int? get pageSize => throw _privateConstructorUsedError;
  int? get totalRecords => throw _privateConstructorUsedError;
  bool? get hasPreviousPage => throw _privateConstructorUsedError;
  int? get totalPages => throw _privateConstructorUsedError;
  bool? get hasNextPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchasedCoursesResponseCopyWith<PurchasedCoursesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchasedCoursesResponseCopyWith<$Res> {
  factory $PurchasedCoursesResponseCopyWith(PurchasedCoursesResponse value,
          $Res Function(PurchasedCoursesResponse) then) =
      _$PurchasedCoursesResponseCopyWithImpl<$Res, PurchasedCoursesResponse>;
  @useResult
  $Res call(
      {List<PurchasedCourse>? data,
      int? pageNumber,
      int? pageSize,
      int? totalRecords,
      bool? hasPreviousPage,
      int? totalPages,
      bool? hasNextPage});
}

/// @nodoc
class _$PurchasedCoursesResponseCopyWithImpl<$Res,
        $Val extends PurchasedCoursesResponse>
    implements $PurchasedCoursesResponseCopyWith<$Res> {
  _$PurchasedCoursesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? pageNumber = freezed,
    Object? pageSize = freezed,
    Object? totalRecords = freezed,
    Object? hasPreviousPage = freezed,
    Object? totalPages = freezed,
    Object? hasNextPage = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PurchasedCourse>?,
      pageNumber: freezed == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      totalRecords: freezed == totalRecords
          ? _value.totalRecords
          : totalRecords // ignore: cast_nullable_to_non_nullable
              as int?,
      hasPreviousPage: freezed == hasPreviousPage
          ? _value.hasPreviousPage
          : hasPreviousPage // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNextPage: freezed == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PurchasedCoursesResponseCopyWith<$Res>
    implements $PurchasedCoursesResponseCopyWith<$Res> {
  factory _$$_PurchasedCoursesResponseCopyWith(
          _$_PurchasedCoursesResponse value,
          $Res Function(_$_PurchasedCoursesResponse) then) =
      __$$_PurchasedCoursesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PurchasedCourse>? data,
      int? pageNumber,
      int? pageSize,
      int? totalRecords,
      bool? hasPreviousPage,
      int? totalPages,
      bool? hasNextPage});
}

/// @nodoc
class __$$_PurchasedCoursesResponseCopyWithImpl<$Res>
    extends _$PurchasedCoursesResponseCopyWithImpl<$Res,
        _$_PurchasedCoursesResponse>
    implements _$$_PurchasedCoursesResponseCopyWith<$Res> {
  __$$_PurchasedCoursesResponseCopyWithImpl(_$_PurchasedCoursesResponse _value,
      $Res Function(_$_PurchasedCoursesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? pageNumber = freezed,
    Object? pageSize = freezed,
    Object? totalRecords = freezed,
    Object? hasPreviousPage = freezed,
    Object? totalPages = freezed,
    Object? hasNextPage = freezed,
  }) {
    return _then(_$_PurchasedCoursesResponse(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PurchasedCourse>?,
      pageNumber: freezed == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      totalRecords: freezed == totalRecords
          ? _value.totalRecords
          : totalRecords // ignore: cast_nullable_to_non_nullable
              as int?,
      hasPreviousPage: freezed == hasPreviousPage
          ? _value.hasPreviousPage
          : hasPreviousPage // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNextPage: freezed == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PurchasedCoursesResponse implements _PurchasedCoursesResponse {
  const _$_PurchasedCoursesResponse(
      {final List<PurchasedCourse>? data,
      this.pageNumber,
      this.pageSize,
      this.totalRecords,
      this.hasPreviousPage,
      this.totalPages,
      this.hasNextPage})
      : _data = data;

  factory _$_PurchasedCoursesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PurchasedCoursesResponseFromJson(json);

  final List<PurchasedCourse>? _data;
  @override
  List<PurchasedCourse>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? pageNumber;
  @override
  final int? pageSize;
  @override
  final int? totalRecords;
  @override
  final bool? hasPreviousPage;
  @override
  final int? totalPages;
  @override
  final bool? hasNextPage;

  @override
  String toString() {
    return 'PurchasedCoursesResponse(data: $data, pageNumber: $pageNumber, pageSize: $pageSize, totalRecords: $totalRecords, hasPreviousPage: $hasPreviousPage, totalPages: $totalPages, hasNextPage: $hasNextPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PurchasedCoursesResponse &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalRecords, totalRecords) ||
                other.totalRecords == totalRecords) &&
            (identical(other.hasPreviousPage, hasPreviousPage) ||
                other.hasPreviousPage == hasPreviousPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      pageNumber,
      pageSize,
      totalRecords,
      hasPreviousPage,
      totalPages,
      hasNextPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchasedCoursesResponseCopyWith<_$_PurchasedCoursesResponse>
      get copyWith => __$$_PurchasedCoursesResponseCopyWithImpl<
          _$_PurchasedCoursesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchasedCoursesResponseToJson(
      this,
    );
  }
}

abstract class _PurchasedCoursesResponse implements PurchasedCoursesResponse {
  const factory _PurchasedCoursesResponse(
      {final List<PurchasedCourse>? data,
      final int? pageNumber,
      final int? pageSize,
      final int? totalRecords,
      final bool? hasPreviousPage,
      final int? totalPages,
      final bool? hasNextPage}) = _$_PurchasedCoursesResponse;

  factory _PurchasedCoursesResponse.fromJson(Map<String, dynamic> json) =
      _$_PurchasedCoursesResponse.fromJson;

  @override
  List<PurchasedCourse>? get data;
  @override
  int? get pageNumber;
  @override
  int? get pageSize;
  @override
  int? get totalRecords;
  @override
  bool? get hasPreviousPage;
  @override
  int? get totalPages;
  @override
  bool? get hasNextPage;
  @override
  @JsonKey(ignore: true)
  _$$_PurchasedCoursesResponseCopyWith<_$_PurchasedCoursesResponse>
      get copyWith => throw _privateConstructorUsedError;
}
