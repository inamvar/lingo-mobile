// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'SearchResponseDtoUseCase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchResponseDtoUseCase _$SearchResponseDtoUseCaseFromJson(
    Map<String, dynamic> json) {
  return _SearchResponseDtoUseCase.fromJson(json);
}

/// @nodoc
mixin _$SearchResponseDtoUseCase {
  List<SearchItem>? get data => throw _privateConstructorUsedError;
  int? get pageNumber => throw _privateConstructorUsedError;
  int? get pageSize => throw _privateConstructorUsedError;
  int? get totalRecords => throw _privateConstructorUsedError;
  bool? get hasPreviousPage => throw _privateConstructorUsedError;
  int? get totalPages => throw _privateConstructorUsedError;
  bool? get hasNextPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResponseDtoUseCaseCopyWith<SearchResponseDtoUseCase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResponseDtoUseCaseCopyWith<$Res> {
  factory $SearchResponseDtoUseCaseCopyWith(SearchResponseDtoUseCase value,
          $Res Function(SearchResponseDtoUseCase) then) =
      _$SearchResponseDtoUseCaseCopyWithImpl<$Res, SearchResponseDtoUseCase>;
  @useResult
  $Res call(
      {List<SearchItem>? data,
      int? pageNumber,
      int? pageSize,
      int? totalRecords,
      bool? hasPreviousPage,
      int? totalPages,
      bool? hasNextPage});
}

/// @nodoc
class _$SearchResponseDtoUseCaseCopyWithImpl<$Res,
        $Val extends SearchResponseDtoUseCase>
    implements $SearchResponseDtoUseCaseCopyWith<$Res> {
  _$SearchResponseDtoUseCaseCopyWithImpl(this._value, this._then);

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
              as List<SearchItem>?,
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
abstract class _$$_SearchResponseDtoUseCaseCopyWith<$Res>
    implements $SearchResponseDtoUseCaseCopyWith<$Res> {
  factory _$$_SearchResponseDtoUseCaseCopyWith(
          _$_SearchResponseDtoUseCase value,
          $Res Function(_$_SearchResponseDtoUseCase) then) =
      __$$_SearchResponseDtoUseCaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SearchItem>? data,
      int? pageNumber,
      int? pageSize,
      int? totalRecords,
      bool? hasPreviousPage,
      int? totalPages,
      bool? hasNextPage});
}

/// @nodoc
class __$$_SearchResponseDtoUseCaseCopyWithImpl<$Res>
    extends _$SearchResponseDtoUseCaseCopyWithImpl<$Res,
        _$_SearchResponseDtoUseCase>
    implements _$$_SearchResponseDtoUseCaseCopyWith<$Res> {
  __$$_SearchResponseDtoUseCaseCopyWithImpl(_$_SearchResponseDtoUseCase _value,
      $Res Function(_$_SearchResponseDtoUseCase) _then)
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
    return _then(_$_SearchResponseDtoUseCase(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SearchItem>?,
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
class _$_SearchResponseDtoUseCase
    with DiagnosticableTreeMixin
    implements _SearchResponseDtoUseCase {
  const _$_SearchResponseDtoUseCase(
      {final List<SearchItem>? data,
      this.pageNumber,
      this.pageSize,
      this.totalRecords,
      this.hasPreviousPage,
      this.totalPages,
      this.hasNextPage})
      : _data = data;

  factory _$_SearchResponseDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$$_SearchResponseDtoUseCaseFromJson(json);

  final List<SearchItem>? _data;
  @override
  List<SearchItem>? get data {
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchResponseDtoUseCase(data: $data, pageNumber: $pageNumber, pageSize: $pageSize, totalRecords: $totalRecords, hasPreviousPage: $hasPreviousPage, totalPages: $totalPages, hasNextPage: $hasNextPage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchResponseDtoUseCase'))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('pageNumber', pageNumber))
      ..add(DiagnosticsProperty('pageSize', pageSize))
      ..add(DiagnosticsProperty('totalRecords', totalRecords))
      ..add(DiagnosticsProperty('hasPreviousPage', hasPreviousPage))
      ..add(DiagnosticsProperty('totalPages', totalPages))
      ..add(DiagnosticsProperty('hasNextPage', hasNextPage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchResponseDtoUseCase &&
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
  _$$_SearchResponseDtoUseCaseCopyWith<_$_SearchResponseDtoUseCase>
      get copyWith => __$$_SearchResponseDtoUseCaseCopyWithImpl<
          _$_SearchResponseDtoUseCase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchResponseDtoUseCaseToJson(
      this,
    );
  }
}

abstract class _SearchResponseDtoUseCase implements SearchResponseDtoUseCase {
  const factory _SearchResponseDtoUseCase(
      {final List<SearchItem>? data,
      final int? pageNumber,
      final int? pageSize,
      final int? totalRecords,
      final bool? hasPreviousPage,
      final int? totalPages,
      final bool? hasNextPage}) = _$_SearchResponseDtoUseCase;

  factory _SearchResponseDtoUseCase.fromJson(Map<String, dynamic> json) =
      _$_SearchResponseDtoUseCase.fromJson;

  @override
  List<SearchItem>? get data;
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
  _$$_SearchResponseDtoUseCaseCopyWith<_$_SearchResponseDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}
