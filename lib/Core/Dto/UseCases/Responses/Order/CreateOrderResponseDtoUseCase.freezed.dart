// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'CreateOrderResponseDtoUseCase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateOrderResponseDtoUseCase _$CreateOrderResponseDtoUseCaseFromJson(
    Map<String, dynamic> json) {
  return _CreateOrderResponseDtoUseCase.fromJson(json);
}

/// @nodoc
mixin _$CreateOrderResponseDtoUseCase {
  int? get orderId => throw _privateConstructorUsedError;
  PaymentUrlDetails? get paymentUrlDetails =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateOrderResponseDtoUseCaseCopyWith<CreateOrderResponseDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOrderResponseDtoUseCaseCopyWith<$Res> {
  factory $CreateOrderResponseDtoUseCaseCopyWith(
          CreateOrderResponseDtoUseCase value,
          $Res Function(CreateOrderResponseDtoUseCase) then) =
      _$CreateOrderResponseDtoUseCaseCopyWithImpl<$Res,
          CreateOrderResponseDtoUseCase>;
  @useResult
  $Res call({int? orderId, PaymentUrlDetails? paymentUrlDetails});

  $PaymentUrlDetailsCopyWith<$Res>? get paymentUrlDetails;
}

/// @nodoc
class _$CreateOrderResponseDtoUseCaseCopyWithImpl<$Res,
        $Val extends CreateOrderResponseDtoUseCase>
    implements $CreateOrderResponseDtoUseCaseCopyWith<$Res> {
  _$CreateOrderResponseDtoUseCaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? paymentUrlDetails = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentUrlDetails: freezed == paymentUrlDetails
          ? _value.paymentUrlDetails
          : paymentUrlDetails // ignore: cast_nullable_to_non_nullable
              as PaymentUrlDetails?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentUrlDetailsCopyWith<$Res>? get paymentUrlDetails {
    if (_value.paymentUrlDetails == null) {
      return null;
    }

    return $PaymentUrlDetailsCopyWith<$Res>(_value.paymentUrlDetails!, (value) {
      return _then(_value.copyWith(paymentUrlDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CreateOrderResponseDtoUseCaseCopyWith<$Res>
    implements $CreateOrderResponseDtoUseCaseCopyWith<$Res> {
  factory _$$_CreateOrderResponseDtoUseCaseCopyWith(
          _$_CreateOrderResponseDtoUseCase value,
          $Res Function(_$_CreateOrderResponseDtoUseCase) then) =
      __$$_CreateOrderResponseDtoUseCaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? orderId, PaymentUrlDetails? paymentUrlDetails});

  @override
  $PaymentUrlDetailsCopyWith<$Res>? get paymentUrlDetails;
}

/// @nodoc
class __$$_CreateOrderResponseDtoUseCaseCopyWithImpl<$Res>
    extends _$CreateOrderResponseDtoUseCaseCopyWithImpl<$Res,
        _$_CreateOrderResponseDtoUseCase>
    implements _$$_CreateOrderResponseDtoUseCaseCopyWith<$Res> {
  __$$_CreateOrderResponseDtoUseCaseCopyWithImpl(
      _$_CreateOrderResponseDtoUseCase _value,
      $Res Function(_$_CreateOrderResponseDtoUseCase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? paymentUrlDetails = freezed,
  }) {
    return _then(_$_CreateOrderResponseDtoUseCase(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentUrlDetails: freezed == paymentUrlDetails
          ? _value.paymentUrlDetails
          : paymentUrlDetails // ignore: cast_nullable_to_non_nullable
              as PaymentUrlDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateOrderResponseDtoUseCase
    implements _CreateOrderResponseDtoUseCase {
  const _$_CreateOrderResponseDtoUseCase(
      {this.orderId, this.paymentUrlDetails});

  factory _$_CreateOrderResponseDtoUseCase.fromJson(
          Map<String, dynamic> json) =>
      _$$_CreateOrderResponseDtoUseCaseFromJson(json);

  @override
  final int? orderId;
  @override
  final PaymentUrlDetails? paymentUrlDetails;

  @override
  String toString() {
    return 'CreateOrderResponseDtoUseCase(orderId: $orderId, paymentUrlDetails: $paymentUrlDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateOrderResponseDtoUseCase &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.paymentUrlDetails, paymentUrlDetails) ||
                other.paymentUrlDetails == paymentUrlDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, orderId, paymentUrlDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateOrderResponseDtoUseCaseCopyWith<_$_CreateOrderResponseDtoUseCase>
      get copyWith => __$$_CreateOrderResponseDtoUseCaseCopyWithImpl<
          _$_CreateOrderResponseDtoUseCase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateOrderResponseDtoUseCaseToJson(
      this,
    );
  }
}

abstract class _CreateOrderResponseDtoUseCase
    implements CreateOrderResponseDtoUseCase {
  const factory _CreateOrderResponseDtoUseCase(
          {final int? orderId, final PaymentUrlDetails? paymentUrlDetails}) =
      _$_CreateOrderResponseDtoUseCase;

  factory _CreateOrderResponseDtoUseCase.fromJson(Map<String, dynamic> json) =
      _$_CreateOrderResponseDtoUseCase.fromJson;

  @override
  int? get orderId;
  @override
  PaymentUrlDetails? get paymentUrlDetails;
  @override
  @JsonKey(ignore: true)
  _$$_CreateOrderResponseDtoUseCaseCopyWith<_$_CreateOrderResponseDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}

PaymentUrlDetails _$PaymentUrlDetailsFromJson(Map<String, dynamic> json) {
  return _PaymentUrlDetails.fromJson(json);
}

/// @nodoc
mixin _$PaymentUrlDetails {
  String? get paymentUrl => throw _privateConstructorUsedError;
  String? get httpMethod => throw _privateConstructorUsedError;
  Params? get params => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentUrlDetailsCopyWith<PaymentUrlDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentUrlDetailsCopyWith<$Res> {
  factory $PaymentUrlDetailsCopyWith(
          PaymentUrlDetails value, $Res Function(PaymentUrlDetails) then) =
      _$PaymentUrlDetailsCopyWithImpl<$Res, PaymentUrlDetails>;
  @useResult
  $Res call({String? paymentUrl, String? httpMethod, Params? params});

  $ParamsCopyWith<$Res>? get params;
}

/// @nodoc
class _$PaymentUrlDetailsCopyWithImpl<$Res, $Val extends PaymentUrlDetails>
    implements $PaymentUrlDetailsCopyWith<$Res> {
  _$PaymentUrlDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentUrl = freezed,
    Object? httpMethod = freezed,
    Object? params = freezed,
  }) {
    return _then(_value.copyWith(
      paymentUrl: freezed == paymentUrl
          ? _value.paymentUrl
          : paymentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      httpMethod: freezed == httpMethod
          ? _value.httpMethod
          : httpMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      params: freezed == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as Params?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ParamsCopyWith<$Res>? get params {
    if (_value.params == null) {
      return null;
    }

    return $ParamsCopyWith<$Res>(_value.params!, (value) {
      return _then(_value.copyWith(params: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PaymentUrlDetailsCopyWith<$Res>
    implements $PaymentUrlDetailsCopyWith<$Res> {
  factory _$$_PaymentUrlDetailsCopyWith(_$_PaymentUrlDetails value,
          $Res Function(_$_PaymentUrlDetails) then) =
      __$$_PaymentUrlDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? paymentUrl, String? httpMethod, Params? params});

  @override
  $ParamsCopyWith<$Res>? get params;
}

/// @nodoc
class __$$_PaymentUrlDetailsCopyWithImpl<$Res>
    extends _$PaymentUrlDetailsCopyWithImpl<$Res, _$_PaymentUrlDetails>
    implements _$$_PaymentUrlDetailsCopyWith<$Res> {
  __$$_PaymentUrlDetailsCopyWithImpl(
      _$_PaymentUrlDetails _value, $Res Function(_$_PaymentUrlDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentUrl = freezed,
    Object? httpMethod = freezed,
    Object? params = freezed,
  }) {
    return _then(_$_PaymentUrlDetails(
      paymentUrl: freezed == paymentUrl
          ? _value.paymentUrl
          : paymentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      httpMethod: freezed == httpMethod
          ? _value.httpMethod
          : httpMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      params: freezed == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as Params?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentUrlDetails implements _PaymentUrlDetails {
  const _$_PaymentUrlDetails({this.paymentUrl, this.httpMethod, this.params});

  factory _$_PaymentUrlDetails.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentUrlDetailsFromJson(json);

  @override
  final String? paymentUrl;
  @override
  final String? httpMethod;
  @override
  final Params? params;

  @override
  String toString() {
    return 'PaymentUrlDetails(paymentUrl: $paymentUrl, httpMethod: $httpMethod, params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentUrlDetails &&
            (identical(other.paymentUrl, paymentUrl) ||
                other.paymentUrl == paymentUrl) &&
            (identical(other.httpMethod, httpMethod) ||
                other.httpMethod == httpMethod) &&
            (identical(other.params, params) || other.params == params));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, paymentUrl, httpMethod, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentUrlDetailsCopyWith<_$_PaymentUrlDetails> get copyWith =>
      __$$_PaymentUrlDetailsCopyWithImpl<_$_PaymentUrlDetails>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentUrlDetailsToJson(
      this,
    );
  }
}

abstract class _PaymentUrlDetails implements PaymentUrlDetails {
  const factory _PaymentUrlDetails(
      {final String? paymentUrl,
      final String? httpMethod,
      final Params? params}) = _$_PaymentUrlDetails;

  factory _PaymentUrlDetails.fromJson(Map<String, dynamic> json) =
      _$_PaymentUrlDetails.fromJson;

  @override
  String? get paymentUrl;
  @override
  String? get httpMethod;
  @override
  Params? get params;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentUrlDetailsCopyWith<_$_PaymentUrlDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

Params _$ParamsFromJson(Map<String, dynamic> json) {
  return _Params.fromJson(json);
}

/// @nodoc
mixin _$Params {
  String? get transactionId => throw _privateConstructorUsedError;
  String? get sign => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParamsCopyWith<Params> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParamsCopyWith<$Res> {
  factory $ParamsCopyWith(Params value, $Res Function(Params) then) =
      _$ParamsCopyWithImpl<$Res, Params>;
  @useResult
  $Res call({String? transactionId, String? sign});
}

/// @nodoc
class _$ParamsCopyWithImpl<$Res, $Val extends Params>
    implements $ParamsCopyWith<$Res> {
  _$ParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = freezed,
    Object? sign = freezed,
  }) {
    return _then(_value.copyWith(
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      sign: freezed == sign
          ? _value.sign
          : sign // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ParamsCopyWith<$Res> implements $ParamsCopyWith<$Res> {
  factory _$$_ParamsCopyWith(_$_Params value, $Res Function(_$_Params) then) =
      __$$_ParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? transactionId, String? sign});
}

/// @nodoc
class __$$_ParamsCopyWithImpl<$Res>
    extends _$ParamsCopyWithImpl<$Res, _$_Params>
    implements _$$_ParamsCopyWith<$Res> {
  __$$_ParamsCopyWithImpl(_$_Params _value, $Res Function(_$_Params) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = freezed,
    Object? sign = freezed,
  }) {
    return _then(_$_Params(
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      sign: freezed == sign
          ? _value.sign
          : sign // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Params implements _Params {
  const _$_Params({this.transactionId, this.sign});

  factory _$_Params.fromJson(Map<String, dynamic> json) =>
      _$$_ParamsFromJson(json);

  @override
  final String? transactionId;
  @override
  final String? sign;

  @override
  String toString() {
    return 'Params(transactionId: $transactionId, sign: $sign)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Params &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.sign, sign) || other.sign == sign));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, transactionId, sign);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParamsCopyWith<_$_Params> get copyWith =>
      __$$_ParamsCopyWithImpl<_$_Params>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParamsToJson(
      this,
    );
  }
}

abstract class _Params implements Params {
  const factory _Params({final String? transactionId, final String? sign}) =
      _$_Params;

  factory _Params.fromJson(Map<String, dynamic> json) = _$_Params.fromJson;

  @override
  String? get transactionId;
  @override
  String? get sign;
  @override
  @JsonKey(ignore: true)
  _$$_ParamsCopyWith<_$_Params> get copyWith =>
      throw _privateConstructorUsedError;
}
