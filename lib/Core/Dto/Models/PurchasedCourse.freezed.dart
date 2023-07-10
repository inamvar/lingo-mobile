// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'PurchasedCourse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PurchasedCourse _$PurchasedCourseFromJson(Map<String, dynamic> json) {
  return _PurchasedCourse.fromJson(json);
}

/// @nodoc
mixin _$PurchasedCourse {
  int? get id => throw _privateConstructorUsedError;
  String? get thumbnailImageUrl => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchasedCourseCopyWith<PurchasedCourse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchasedCourseCopyWith<$Res> {
  factory $PurchasedCourseCopyWith(
          PurchasedCourse value, $Res Function(PurchasedCourse) then) =
      _$PurchasedCourseCopyWithImpl<$Res, PurchasedCourse>;
  @useResult
  $Res call(
      {int? id,
      String? thumbnailImageUrl,
      String? title,
      String? description,
      String? slug});
}

/// @nodoc
class _$PurchasedCourseCopyWithImpl<$Res, $Val extends PurchasedCourse>
    implements $PurchasedCourseCopyWith<$Res> {
  _$PurchasedCourseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? thumbnailImageUrl = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? slug = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailImageUrl: freezed == thumbnailImageUrl
          ? _value.thumbnailImageUrl
          : thumbnailImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PurchasedCourseCopyWith<$Res>
    implements $PurchasedCourseCopyWith<$Res> {
  factory _$$_PurchasedCourseCopyWith(
          _$_PurchasedCourse value, $Res Function(_$_PurchasedCourse) then) =
      __$$_PurchasedCourseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? thumbnailImageUrl,
      String? title,
      String? description,
      String? slug});
}

/// @nodoc
class __$$_PurchasedCourseCopyWithImpl<$Res>
    extends _$PurchasedCourseCopyWithImpl<$Res, _$_PurchasedCourse>
    implements _$$_PurchasedCourseCopyWith<$Res> {
  __$$_PurchasedCourseCopyWithImpl(
      _$_PurchasedCourse _value, $Res Function(_$_PurchasedCourse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? thumbnailImageUrl = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? slug = freezed,
  }) {
    return _then(_$_PurchasedCourse(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailImageUrl: freezed == thumbnailImageUrl
          ? _value.thumbnailImageUrl
          : thumbnailImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PurchasedCourse implements _PurchasedCourse {
  const _$_PurchasedCourse(
      {this.id,
      this.thumbnailImageUrl,
      this.title,
      this.description,
      this.slug});

  factory _$_PurchasedCourse.fromJson(Map<String, dynamic> json) =>
      _$$_PurchasedCourseFromJson(json);

  @override
  final int? id;
  @override
  final String? thumbnailImageUrl;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? slug;

  @override
  String toString() {
    return 'PurchasedCourse(id: $id, thumbnailImageUrl: $thumbnailImageUrl, title: $title, description: $description, slug: $slug)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PurchasedCourse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.thumbnailImageUrl, thumbnailImageUrl) ||
                other.thumbnailImageUrl == thumbnailImageUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, thumbnailImageUrl, title, description, slug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchasedCourseCopyWith<_$_PurchasedCourse> get copyWith =>
      __$$_PurchasedCourseCopyWithImpl<_$_PurchasedCourse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchasedCourseToJson(
      this,
    );
  }
}

abstract class _PurchasedCourse implements PurchasedCourse {
  const factory _PurchasedCourse(
      {final int? id,
      final String? thumbnailImageUrl,
      final String? title,
      final String? description,
      final String? slug}) = _$_PurchasedCourse;

  factory _PurchasedCourse.fromJson(Map<String, dynamic> json) =
      _$_PurchasedCourse.fromJson;

  @override
  int? get id;
  @override
  String? get thumbnailImageUrl;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get slug;
  @override
  @JsonKey(ignore: true)
  _$$_PurchasedCourseCopyWith<_$_PurchasedCourse> get copyWith =>
      throw _privateConstructorUsedError;
}
