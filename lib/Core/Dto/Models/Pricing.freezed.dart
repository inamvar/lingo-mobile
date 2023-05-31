// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Pricing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pricing _$PricingFromJson(Map<String, dynamic> json) {
  return _Pricing.fromJson(json);
}

/// @nodoc
mixin _$Pricing {
  String? get currencyType => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PricingCopyWith<Pricing> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricingCopyWith<$Res> {
  factory $PricingCopyWith(Pricing value, $Res Function(Pricing) then) =
      _$PricingCopyWithImpl<$Res, Pricing>;
  @useResult
  $Res call({String? currencyType, int? amount});
}

/// @nodoc
class _$PricingCopyWithImpl<$Res, $Val extends Pricing>
    implements $PricingCopyWith<$Res> {
  _$PricingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyType = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      currencyType: freezed == currencyType
          ? _value.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PricingCopyWith<$Res> implements $PricingCopyWith<$Res> {
  factory _$$_PricingCopyWith(
          _$_Pricing value, $Res Function(_$_Pricing) then) =
      __$$_PricingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? currencyType, int? amount});
}

/// @nodoc
class __$$_PricingCopyWithImpl<$Res>
    extends _$PricingCopyWithImpl<$Res, _$_Pricing>
    implements _$$_PricingCopyWith<$Res> {
  __$$_PricingCopyWithImpl(_$_Pricing _value, $Res Function(_$_Pricing) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyType = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$_Pricing(
      currencyType: freezed == currencyType
          ? _value.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pricing implements _Pricing {
  const _$_Pricing({this.currencyType, this.amount});

  factory _$_Pricing.fromJson(Map<String, dynamic> json) =>
      _$$_PricingFromJson(json);

  @override
  final String? currencyType;
  @override
  final int? amount;

  @override
  String toString() {
    return 'Pricing(currencyType: $currencyType, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pricing &&
            (identical(other.currencyType, currencyType) ||
                other.currencyType == currencyType) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currencyType, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PricingCopyWith<_$_Pricing> get copyWith =>
      __$$_PricingCopyWithImpl<_$_Pricing>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PricingToJson(
      this,
    );
  }
}

abstract class _Pricing implements Pricing {
  const factory _Pricing({final String? currencyType, final int? amount}) =
      _$_Pricing;

  factory _Pricing.fromJson(Map<String, dynamic> json) = _$_Pricing.fromJson;

  @override
  String? get currencyType;
  @override
  int? get amount;
  @override
  @JsonKey(ignore: true)
  _$$_PricingCopyWith<_$_Pricing> get copyWith =>
      throw _privateConstructorUsedError;
}
