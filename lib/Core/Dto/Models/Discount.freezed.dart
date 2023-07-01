// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Discount.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Discount _$DiscountFromJson(Map<String, dynamic> json) {
  return _Discount.fromJson(json);
}

/// @nodoc
mixin _$Discount {
  int? get discountValue => throw _privateConstructorUsedError;
  List<Pricing>? get finalAmounts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscountCopyWith<Discount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountCopyWith<$Res> {
  factory $DiscountCopyWith(Discount value, $Res Function(Discount) then) =
      _$DiscountCopyWithImpl<$Res, Discount>;
  @useResult
  $Res call({int? discountValue, List<Pricing>? finalAmounts});
}

/// @nodoc
class _$DiscountCopyWithImpl<$Res, $Val extends Discount>
    implements $DiscountCopyWith<$Res> {
  _$DiscountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discountValue = freezed,
    Object? finalAmounts = freezed,
  }) {
    return _then(_value.copyWith(
      discountValue: freezed == discountValue
          ? _value.discountValue
          : discountValue // ignore: cast_nullable_to_non_nullable
              as int?,
      finalAmounts: freezed == finalAmounts
          ? _value.finalAmounts
          : finalAmounts // ignore: cast_nullable_to_non_nullable
              as List<Pricing>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DiscountCopyWith<$Res> implements $DiscountCopyWith<$Res> {
  factory _$$_DiscountCopyWith(
          _$_Discount value, $Res Function(_$_Discount) then) =
      __$$_DiscountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? discountValue, List<Pricing>? finalAmounts});
}

/// @nodoc
class __$$_DiscountCopyWithImpl<$Res>
    extends _$DiscountCopyWithImpl<$Res, _$_Discount>
    implements _$$_DiscountCopyWith<$Res> {
  __$$_DiscountCopyWithImpl(
      _$_Discount _value, $Res Function(_$_Discount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discountValue = freezed,
    Object? finalAmounts = freezed,
  }) {
    return _then(_$_Discount(
      discountValue: freezed == discountValue
          ? _value.discountValue
          : discountValue // ignore: cast_nullable_to_non_nullable
              as int?,
      finalAmounts: freezed == finalAmounts
          ? _value._finalAmounts
          : finalAmounts // ignore: cast_nullable_to_non_nullable
              as List<Pricing>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Discount implements _Discount {
  const _$_Discount({this.discountValue, final List<Pricing>? finalAmounts})
      : _finalAmounts = finalAmounts;

  factory _$_Discount.fromJson(Map<String, dynamic> json) =>
      _$$_DiscountFromJson(json);

  @override
  final int? discountValue;
  final List<Pricing>? _finalAmounts;
  @override
  List<Pricing>? get finalAmounts {
    final value = _finalAmounts;
    if (value == null) return null;
    if (_finalAmounts is EqualUnmodifiableListView) return _finalAmounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Discount(discountValue: $discountValue, finalAmounts: $finalAmounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Discount &&
            (identical(other.discountValue, discountValue) ||
                other.discountValue == discountValue) &&
            const DeepCollectionEquality()
                .equals(other._finalAmounts, _finalAmounts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, discountValue,
      const DeepCollectionEquality().hash(_finalAmounts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiscountCopyWith<_$_Discount> get copyWith =>
      __$$_DiscountCopyWithImpl<_$_Discount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiscountToJson(
      this,
    );
  }
}

abstract class _Discount implements Discount {
  const factory _Discount(
      {final int? discountValue,
      final List<Pricing>? finalAmounts}) = _$_Discount;

  factory _Discount.fromJson(Map<String, dynamic> json) = _$_Discount.fromJson;

  @override
  int? get discountValue;
  @override
  List<Pricing>? get finalAmounts;
  @override
  @JsonKey(ignore: true)
  _$$_DiscountCopyWith<_$_Discount> get copyWith =>
      throw _privateConstructorUsedError;
}
