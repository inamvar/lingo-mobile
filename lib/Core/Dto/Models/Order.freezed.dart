// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  String? get courseName => throw _privateConstructorUsedError;
  String? get orderDate => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  int? get finalPrice => throw _privateConstructorUsedError;
  int? get courseId => throw _privateConstructorUsedError;
  int? get orderId => throw _privateConstructorUsedError;
  String? get courseSlug => throw _privateConstructorUsedError;
  String? get pdfReportLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {String? courseName,
      String? orderDate,
      int? price,
      int? discount,
      int? finalPrice,
      int? courseId,
      int? orderId,
      String? courseSlug,
      String? pdfReportLink});
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseName = freezed,
    Object? orderDate = freezed,
    Object? price = freezed,
    Object? discount = freezed,
    Object? finalPrice = freezed,
    Object? courseId = freezed,
    Object? orderId = freezed,
    Object? courseSlug = freezed,
    Object? pdfReportLink = freezed,
  }) {
    return _then(_value.copyWith(
      courseName: freezed == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDate: freezed == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      finalPrice: freezed == finalPrice
          ? _value.finalPrice
          : finalPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      courseSlug: freezed == courseSlug
          ? _value.courseSlug
          : courseSlug // ignore: cast_nullable_to_non_nullable
              as String?,
      pdfReportLink: freezed == pdfReportLink
          ? _value.pdfReportLink
          : pdfReportLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$_OrderCopyWith(_$_Order value, $Res Function(_$_Order) then) =
      __$$_OrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? courseName,
      String? orderDate,
      int? price,
      int? discount,
      int? finalPrice,
      int? courseId,
      int? orderId,
      String? courseSlug,
      String? pdfReportLink});
}

/// @nodoc
class __$$_OrderCopyWithImpl<$Res> extends _$OrderCopyWithImpl<$Res, _$_Order>
    implements _$$_OrderCopyWith<$Res> {
  __$$_OrderCopyWithImpl(_$_Order _value, $Res Function(_$_Order) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseName = freezed,
    Object? orderDate = freezed,
    Object? price = freezed,
    Object? discount = freezed,
    Object? finalPrice = freezed,
    Object? courseId = freezed,
    Object? orderId = freezed,
    Object? courseSlug = freezed,
    Object? pdfReportLink = freezed,
  }) {
    return _then(_$_Order(
      courseName: freezed == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDate: freezed == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      finalPrice: freezed == finalPrice
          ? _value.finalPrice
          : finalPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      courseSlug: freezed == courseSlug
          ? _value.courseSlug
          : courseSlug // ignore: cast_nullable_to_non_nullable
              as String?,
      pdfReportLink: freezed == pdfReportLink
          ? _value.pdfReportLink
          : pdfReportLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Order with DiagnosticableTreeMixin implements _Order {
  const _$_Order(
      {this.courseName,
      this.orderDate,
      this.price,
      this.discount,
      this.finalPrice,
      this.courseId,
      this.orderId,
      this.courseSlug,
      this.pdfReportLink});

  factory _$_Order.fromJson(Map<String, dynamic> json) =>
      _$$_OrderFromJson(json);

  @override
  final String? courseName;
  @override
  final String? orderDate;
  @override
  final int? price;
  @override
  final int? discount;
  @override
  final int? finalPrice;
  @override
  final int? courseId;
  @override
  final int? orderId;
  @override
  final String? courseSlug;
  @override
  final String? pdfReportLink;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Order(courseName: $courseName, orderDate: $orderDate, price: $price, discount: $discount, finalPrice: $finalPrice, courseId: $courseId, orderId: $orderId, courseSlug: $courseSlug, pdfReportLink: $pdfReportLink)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Order'))
      ..add(DiagnosticsProperty('courseName', courseName))
      ..add(DiagnosticsProperty('orderDate', orderDate))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('discount', discount))
      ..add(DiagnosticsProperty('finalPrice', finalPrice))
      ..add(DiagnosticsProperty('courseId', courseId))
      ..add(DiagnosticsProperty('orderId', orderId))
      ..add(DiagnosticsProperty('courseSlug', courseSlug))
      ..add(DiagnosticsProperty('pdfReportLink', pdfReportLink));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Order &&
            (identical(other.courseName, courseName) ||
                other.courseName == courseName) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.finalPrice, finalPrice) ||
                other.finalPrice == finalPrice) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.courseSlug, courseSlug) ||
                other.courseSlug == courseSlug) &&
            (identical(other.pdfReportLink, pdfReportLink) ||
                other.pdfReportLink == pdfReportLink));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, courseName, orderDate, price,
      discount, finalPrice, courseId, orderId, courseSlug, pdfReportLink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      __$$_OrderCopyWithImpl<_$_Order>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderToJson(
      this,
    );
  }
}

abstract class _Order implements Order {
  const factory _Order(
      {final String? courseName,
      final String? orderDate,
      final int? price,
      final int? discount,
      final int? finalPrice,
      final int? courseId,
      final int? orderId,
      final String? courseSlug,
      final String? pdfReportLink}) = _$_Order;

  factory _Order.fromJson(Map<String, dynamic> json) = _$_Order.fromJson;

  @override
  String? get courseName;
  @override
  String? get orderDate;
  @override
  int? get price;
  @override
  int? get discount;
  @override
  int? get finalPrice;
  @override
  int? get courseId;
  @override
  int? get orderId;
  @override
  String? get courseSlug;
  @override
  String? get pdfReportLink;
  @override
  @JsonKey(ignore: true)
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      throw _privateConstructorUsedError;
}
