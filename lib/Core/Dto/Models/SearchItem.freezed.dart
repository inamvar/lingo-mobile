// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'SearchItem.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchItem _$SearchItemFromJson(Map<String, dynamic> json) {
  return _SearchItem.fromJson(json);
}

/// @nodoc
mixin _$SearchItem {
  String? get productType => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get firstCourseSlug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchItemCopyWith<SearchItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchItemCopyWith<$Res> {
  factory $SearchItemCopyWith(
          SearchItem value, $Res Function(SearchItem) then) =
      _$SearchItemCopyWithImpl<$Res, SearchItem>;
  @useResult
  $Res call(
      {String? productType,
      String? title,
      String? slug,
      int? id,
      String? firstCourseSlug});
}

/// @nodoc
class _$SearchItemCopyWithImpl<$Res, $Val extends SearchItem>
    implements $SearchItemCopyWith<$Res> {
  _$SearchItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productType = freezed,
    Object? title = freezed,
    Object? slug = freezed,
    Object? id = freezed,
    Object? firstCourseSlug = freezed,
  }) {
    return _then(_value.copyWith(
      productType: freezed == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstCourseSlug: freezed == firstCourseSlug
          ? _value.firstCourseSlug
          : firstCourseSlug // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchItemCopyWith<$Res>
    implements $SearchItemCopyWith<$Res> {
  factory _$$_SearchItemCopyWith(
          _$_SearchItem value, $Res Function(_$_SearchItem) then) =
      __$$_SearchItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? productType,
      String? title,
      String? slug,
      int? id,
      String? firstCourseSlug});
}

/// @nodoc
class __$$_SearchItemCopyWithImpl<$Res>
    extends _$SearchItemCopyWithImpl<$Res, _$_SearchItem>
    implements _$$_SearchItemCopyWith<$Res> {
  __$$_SearchItemCopyWithImpl(
      _$_SearchItem _value, $Res Function(_$_SearchItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productType = freezed,
    Object? title = freezed,
    Object? slug = freezed,
    Object? id = freezed,
    Object? firstCourseSlug = freezed,
  }) {
    return _then(_$_SearchItem(
      productType: freezed == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstCourseSlug: freezed == firstCourseSlug
          ? _value.firstCourseSlug
          : firstCourseSlug // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchItem with DiagnosticableTreeMixin implements _SearchItem {
  const _$_SearchItem(
      {this.productType, this.title, this.slug, this.id, this.firstCourseSlug});

  factory _$_SearchItem.fromJson(Map<String, dynamic> json) =>
      _$$_SearchItemFromJson(json);

  @override
  final String? productType;
  @override
  final String? title;
  @override
  final String? slug;
  @override
  final int? id;
  @override
  final String? firstCourseSlug;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchItem(productType: $productType, title: $title, slug: $slug, id: $id, firstCourseSlug: $firstCourseSlug)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchItem'))
      ..add(DiagnosticsProperty('productType', productType))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('slug', slug))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('firstCourseSlug', firstCourseSlug));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchItem &&
            (identical(other.productType, productType) ||
                other.productType == productType) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstCourseSlug, firstCourseSlug) ||
                other.firstCourseSlug == firstCourseSlug));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, productType, title, slug, id, firstCourseSlug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchItemCopyWith<_$_SearchItem> get copyWith =>
      __$$_SearchItemCopyWithImpl<_$_SearchItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchItemToJson(
      this,
    );
  }
}

abstract class _SearchItem implements SearchItem {
  const factory _SearchItem(
      {final String? productType,
      final String? title,
      final String? slug,
      final int? id,
      final String? firstCourseSlug}) = _$_SearchItem;

  factory _SearchItem.fromJson(Map<String, dynamic> json) =
      _$_SearchItem.fromJson;

  @override
  String? get productType;
  @override
  String? get title;
  @override
  String? get slug;
  @override
  int? get id;
  @override
  String? get firstCourseSlug;
  @override
  @JsonKey(ignore: true)
  _$$_SearchItemCopyWith<_$_SearchItem> get copyWith =>
      throw _privateConstructorUsedError;
}
