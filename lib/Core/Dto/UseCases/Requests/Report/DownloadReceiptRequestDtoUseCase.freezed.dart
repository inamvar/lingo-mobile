// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'DownloadReceiptRequestDtoUseCase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DownloadReceiptRequestDtoUseCase _$DownloadReceiptRequestDtoUseCaseFromJson(
    Map<String, dynamic> json) {
  return _DownloadReceiptRequestDtoUseCase.fromJson(json);
}

/// @nodoc
mixin _$DownloadReceiptRequestDtoUseCase {
  String? get orderId => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  Function? get onReceiveProgress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadReceiptRequestDtoUseCaseCopyWith<DownloadReceiptRequestDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadReceiptRequestDtoUseCaseCopyWith<$Res> {
  factory $DownloadReceiptRequestDtoUseCaseCopyWith(
          DownloadReceiptRequestDtoUseCase value,
          $Res Function(DownloadReceiptRequestDtoUseCase) then) =
      _$DownloadReceiptRequestDtoUseCaseCopyWithImpl<$Res,
          DownloadReceiptRequestDtoUseCase>;
  @useResult
  $Res call(
      {String? orderId,
      @JsonKey(includeToJson: false, includeFromJson: false)
          Function? onReceiveProgress});
}

/// @nodoc
class _$DownloadReceiptRequestDtoUseCaseCopyWithImpl<$Res,
        $Val extends DownloadReceiptRequestDtoUseCase>
    implements $DownloadReceiptRequestDtoUseCaseCopyWith<$Res> {
  _$DownloadReceiptRequestDtoUseCaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? onReceiveProgress = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      onReceiveProgress: freezed == onReceiveProgress
          ? _value.onReceiveProgress
          : onReceiveProgress // ignore: cast_nullable_to_non_nullable
              as Function?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DownloadReceiptRequestDtoUseCaseCopyWith<$Res>
    implements $DownloadReceiptRequestDtoUseCaseCopyWith<$Res> {
  factory _$$_DownloadReceiptRequestDtoUseCaseCopyWith(
          _$_DownloadReceiptRequestDtoUseCase value,
          $Res Function(_$_DownloadReceiptRequestDtoUseCase) then) =
      __$$_DownloadReceiptRequestDtoUseCaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? orderId,
      @JsonKey(includeToJson: false, includeFromJson: false)
          Function? onReceiveProgress});
}

/// @nodoc
class __$$_DownloadReceiptRequestDtoUseCaseCopyWithImpl<$Res>
    extends _$DownloadReceiptRequestDtoUseCaseCopyWithImpl<$Res,
        _$_DownloadReceiptRequestDtoUseCase>
    implements _$$_DownloadReceiptRequestDtoUseCaseCopyWith<$Res> {
  __$$_DownloadReceiptRequestDtoUseCaseCopyWithImpl(
      _$_DownloadReceiptRequestDtoUseCase _value,
      $Res Function(_$_DownloadReceiptRequestDtoUseCase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? onReceiveProgress = freezed,
  }) {
    return _then(_$_DownloadReceiptRequestDtoUseCase(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      onReceiveProgress: freezed == onReceiveProgress
          ? _value.onReceiveProgress
          : onReceiveProgress // ignore: cast_nullable_to_non_nullable
              as Function?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DownloadReceiptRequestDtoUseCase
    with DiagnosticableTreeMixin
    implements _DownloadReceiptRequestDtoUseCase {
  const _$_DownloadReceiptRequestDtoUseCase(
      {this.orderId,
      @JsonKey(includeToJson: false, includeFromJson: false)
          this.onReceiveProgress});

  factory _$_DownloadReceiptRequestDtoUseCase.fromJson(
          Map<String, dynamic> json) =>
      _$$_DownloadReceiptRequestDtoUseCaseFromJson(json);

  @override
  final String? orderId;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final Function? onReceiveProgress;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DownloadReceiptRequestDtoUseCase(orderId: $orderId, onReceiveProgress: $onReceiveProgress)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DownloadReceiptRequestDtoUseCase'))
      ..add(DiagnosticsProperty('orderId', orderId))
      ..add(DiagnosticsProperty('onReceiveProgress', onReceiveProgress));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownloadReceiptRequestDtoUseCase &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.onReceiveProgress, onReceiveProgress) ||
                other.onReceiveProgress == onReceiveProgress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, orderId, onReceiveProgress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DownloadReceiptRequestDtoUseCaseCopyWith<
          _$_DownloadReceiptRequestDtoUseCase>
      get copyWith => __$$_DownloadReceiptRequestDtoUseCaseCopyWithImpl<
          _$_DownloadReceiptRequestDtoUseCase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DownloadReceiptRequestDtoUseCaseToJson(
      this,
    );
  }
}

abstract class _DownloadReceiptRequestDtoUseCase
    implements DownloadReceiptRequestDtoUseCase {
  const factory _DownloadReceiptRequestDtoUseCase(
          {final String? orderId,
          @JsonKey(includeToJson: false, includeFromJson: false)
              final Function? onReceiveProgress}) =
      _$_DownloadReceiptRequestDtoUseCase;

  factory _DownloadReceiptRequestDtoUseCase.fromJson(
      Map<String, dynamic> json) = _$_DownloadReceiptRequestDtoUseCase.fromJson;

  @override
  String? get orderId;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  Function? get onReceiveProgress;
  @override
  @JsonKey(ignore: true)
  _$$_DownloadReceiptRequestDtoUseCaseCopyWith<
          _$_DownloadReceiptRequestDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}
