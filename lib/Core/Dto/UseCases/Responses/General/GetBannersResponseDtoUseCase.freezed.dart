// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'GetBannersResponseDtoUseCase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetBannersResponseDtoUseCase _$GetBannersResponseDtoUseCaseFromJson(
    Map<String, dynamic> json) {
  return _GetBannersResponseDtoUseCase.fromJson(json);
}

/// @nodoc
mixin _$GetBannersResponseDtoUseCase {
  List<Banner>? get banners => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetBannersResponseDtoUseCaseCopyWith<GetBannersResponseDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBannersResponseDtoUseCaseCopyWith<$Res> {
  factory $GetBannersResponseDtoUseCaseCopyWith(
          GetBannersResponseDtoUseCase value,
          $Res Function(GetBannersResponseDtoUseCase) then) =
      _$GetBannersResponseDtoUseCaseCopyWithImpl<$Res,
          GetBannersResponseDtoUseCase>;
  @useResult
  $Res call({List<Banner>? banners});
}

/// @nodoc
class _$GetBannersResponseDtoUseCaseCopyWithImpl<$Res,
        $Val extends GetBannersResponseDtoUseCase>
    implements $GetBannersResponseDtoUseCaseCopyWith<$Res> {
  _$GetBannersResponseDtoUseCaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banners = freezed,
  }) {
    return _then(_value.copyWith(
      banners: freezed == banners
          ? _value.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<Banner>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetBannersResponseDtoUseCaseCopyWith<$Res>
    implements $GetBannersResponseDtoUseCaseCopyWith<$Res> {
  factory _$$_GetBannersResponseDtoUseCaseCopyWith(
          _$_GetBannersResponseDtoUseCase value,
          $Res Function(_$_GetBannersResponseDtoUseCase) then) =
      __$$_GetBannersResponseDtoUseCaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Banner>? banners});
}

/// @nodoc
class __$$_GetBannersResponseDtoUseCaseCopyWithImpl<$Res>
    extends _$GetBannersResponseDtoUseCaseCopyWithImpl<$Res,
        _$_GetBannersResponseDtoUseCase>
    implements _$$_GetBannersResponseDtoUseCaseCopyWith<$Res> {
  __$$_GetBannersResponseDtoUseCaseCopyWithImpl(
      _$_GetBannersResponseDtoUseCase _value,
      $Res Function(_$_GetBannersResponseDtoUseCase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banners = freezed,
  }) {
    return _then(_$_GetBannersResponseDtoUseCase(
      banners: freezed == banners
          ? _value._banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<Banner>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetBannersResponseDtoUseCase
    with DiagnosticableTreeMixin
    implements _GetBannersResponseDtoUseCase {
  const _$_GetBannersResponseDtoUseCase({final List<Banner>? banners})
      : _banners = banners;

  factory _$_GetBannersResponseDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$$_GetBannersResponseDtoUseCaseFromJson(json);

  final List<Banner>? _banners;
  @override
  List<Banner>? get banners {
    final value = _banners;
    if (value == null) return null;
    if (_banners is EqualUnmodifiableListView) return _banners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetBannersResponseDtoUseCase(banners: $banners)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetBannersResponseDtoUseCase'))
      ..add(DiagnosticsProperty('banners', banners));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetBannersResponseDtoUseCase &&
            const DeepCollectionEquality().equals(other._banners, _banners));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_banners));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetBannersResponseDtoUseCaseCopyWith<_$_GetBannersResponseDtoUseCase>
      get copyWith => __$$_GetBannersResponseDtoUseCaseCopyWithImpl<
          _$_GetBannersResponseDtoUseCase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetBannersResponseDtoUseCaseToJson(
      this,
    );
  }
}

abstract class _GetBannersResponseDtoUseCase
    implements GetBannersResponseDtoUseCase {
  const factory _GetBannersResponseDtoUseCase({final List<Banner>? banners}) =
      _$_GetBannersResponseDtoUseCase;

  factory _GetBannersResponseDtoUseCase.fromJson(Map<String, dynamic> json) =
      _$_GetBannersResponseDtoUseCase.fromJson;

  @override
  List<Banner>? get banners;
  @override
  @JsonKey(ignore: true)
  _$$_GetBannersResponseDtoUseCaseCopyWith<_$_GetBannersResponseDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}
