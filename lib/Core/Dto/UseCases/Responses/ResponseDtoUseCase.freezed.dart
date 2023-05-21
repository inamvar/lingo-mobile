// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ResponseDtoUseCase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseDtoUseCase _$ResponseDtoUseCaseFromJson(Map<String, dynamic> json) {
  return _ResponseDtoUseCase.fromJson(json);
}

/// @nodoc
mixin _$ResponseDtoUseCase {
  Map<String, dynamic>? get data => throw _privateConstructorUsedError;
  List<String>? get errorMessages => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  dynamic get statusCode => throw _privateConstructorUsedError;
  String? get dateTime => throw _privateConstructorUsedError;
  bool? get success => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseDtoUseCaseCopyWith<ResponseDtoUseCase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDtoUseCaseCopyWith<$Res> {
  factory $ResponseDtoUseCaseCopyWith(
          ResponseDtoUseCase value, $Res Function(ResponseDtoUseCase) then) =
      _$ResponseDtoUseCaseCopyWithImpl<$Res, ResponseDtoUseCase>;
  @useResult
  $Res call(
      {Map<String, dynamic>? data,
      List<String>? errorMessages,
      String? message,
      dynamic statusCode,
      String? dateTime,
      bool? success});
}

/// @nodoc
class _$ResponseDtoUseCaseCopyWithImpl<$Res, $Val extends ResponseDtoUseCase>
    implements $ResponseDtoUseCaseCopyWith<$Res> {
  _$ResponseDtoUseCaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? errorMessages = freezed,
    Object? message = freezed,
    Object? statusCode = freezed,
    Object? dateTime = freezed,
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      errorMessages: freezed == errorMessages
          ? _value.errorMessages
          : errorMessages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseDtoUseCaseCopyWith<$Res>
    implements $ResponseDtoUseCaseCopyWith<$Res> {
  factory _$$_ResponseDtoUseCaseCopyWith(_$_ResponseDtoUseCase value,
          $Res Function(_$_ResponseDtoUseCase) then) =
      __$$_ResponseDtoUseCaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic>? data,
      List<String>? errorMessages,
      String? message,
      dynamic statusCode,
      String? dateTime,
      bool? success});
}

/// @nodoc
class __$$_ResponseDtoUseCaseCopyWithImpl<$Res>
    extends _$ResponseDtoUseCaseCopyWithImpl<$Res, _$_ResponseDtoUseCase>
    implements _$$_ResponseDtoUseCaseCopyWith<$Res> {
  __$$_ResponseDtoUseCaseCopyWithImpl(
      _$_ResponseDtoUseCase _value, $Res Function(_$_ResponseDtoUseCase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? errorMessages = freezed,
    Object? message = freezed,
    Object? statusCode = freezed,
    Object? dateTime = freezed,
    Object? success = freezed,
  }) {
    return _then(_$_ResponseDtoUseCase(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      errorMessages: freezed == errorMessages
          ? _value._errorMessages
          : errorMessages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseDtoUseCase
    with DiagnosticableTreeMixin
    implements _ResponseDtoUseCase {
  const _$_ResponseDtoUseCase(
      {final Map<String, dynamic>? data,
      final List<String>? errorMessages,
      this.message,
      this.statusCode,
      this.dateTime,
      this.success})
      : _data = data,
        _errorMessages = errorMessages;

  factory _$_ResponseDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseDtoUseCaseFromJson(json);

  final Map<String, dynamic>? _data;
  @override
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<String>? _errorMessages;
  @override
  List<String>? get errorMessages {
    final value = _errorMessages;
    if (value == null) return null;
    if (_errorMessages is EqualUnmodifiableListView) return _errorMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? message;
  @override
  final dynamic statusCode;
  @override
  final String? dateTime;
  @override
  final bool? success;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResponseDtoUseCase(data: $data, errorMessages: $errorMessages, message: $message, statusCode: $statusCode, dateTime: $dateTime, success: $success)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResponseDtoUseCase'))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('errorMessages', errorMessages))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('statusCode', statusCode))
      ..add(DiagnosticsProperty('dateTime', dateTime))
      ..add(DiagnosticsProperty('success', success));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseDtoUseCase &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality()
                .equals(other._errorMessages, _errorMessages) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_errorMessages),
      message,
      const DeepCollectionEquality().hash(statusCode),
      dateTime,
      success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseDtoUseCaseCopyWith<_$_ResponseDtoUseCase> get copyWith =>
      __$$_ResponseDtoUseCaseCopyWithImpl<_$_ResponseDtoUseCase>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseDtoUseCaseToJson(
      this,
    );
  }
}

abstract class _ResponseDtoUseCase implements ResponseDtoUseCase {
  const factory _ResponseDtoUseCase(
      {final Map<String, dynamic>? data,
      final List<String>? errorMessages,
      final String? message,
      final dynamic statusCode,
      final String? dateTime,
      final bool? success}) = _$_ResponseDtoUseCase;

  factory _ResponseDtoUseCase.fromJson(Map<String, dynamic> json) =
      _$_ResponseDtoUseCase.fromJson;

  @override
  Map<String, dynamic>? get data;
  @override
  List<String>? get errorMessages;
  @override
  String? get message;
  @override
  dynamic get statusCode;
  @override
  String? get dateTime;
  @override
  bool? get success;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseDtoUseCaseCopyWith<_$_ResponseDtoUseCase> get copyWith =>
      throw _privateConstructorUsedError;
}
