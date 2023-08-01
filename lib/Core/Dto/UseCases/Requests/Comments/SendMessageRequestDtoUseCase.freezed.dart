// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'SendMessageRequestDtoUseCase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SendMessageRequestDtoUseCase _$SendMessageRequestDtoUseCaseFromJson(
    Map<String, dynamic> json) {
  return _SendMessageRequestDtoUseCase.fromJson(json);
}

/// @nodoc
mixin _$SendMessageRequestDtoUseCase {
  String? get subject => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendMessageRequestDtoUseCaseCopyWith<SendMessageRequestDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendMessageRequestDtoUseCaseCopyWith<$Res> {
  factory $SendMessageRequestDtoUseCaseCopyWith(
          SendMessageRequestDtoUseCase value,
          $Res Function(SendMessageRequestDtoUseCase) then) =
      _$SendMessageRequestDtoUseCaseCopyWithImpl<$Res,
          SendMessageRequestDtoUseCase>;
  @useResult
  $Res call({String? subject, String? body});
}

/// @nodoc
class _$SendMessageRequestDtoUseCaseCopyWithImpl<$Res,
        $Val extends SendMessageRequestDtoUseCase>
    implements $SendMessageRequestDtoUseCaseCopyWith<$Res> {
  _$SendMessageRequestDtoUseCaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SendMessageRequestDtoUseCaseCopyWith<$Res>
    implements $SendMessageRequestDtoUseCaseCopyWith<$Res> {
  factory _$$_SendMessageRequestDtoUseCaseCopyWith(
          _$_SendMessageRequestDtoUseCase value,
          $Res Function(_$_SendMessageRequestDtoUseCase) then) =
      __$$_SendMessageRequestDtoUseCaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? subject, String? body});
}

/// @nodoc
class __$$_SendMessageRequestDtoUseCaseCopyWithImpl<$Res>
    extends _$SendMessageRequestDtoUseCaseCopyWithImpl<$Res,
        _$_SendMessageRequestDtoUseCase>
    implements _$$_SendMessageRequestDtoUseCaseCopyWith<$Res> {
  __$$_SendMessageRequestDtoUseCaseCopyWithImpl(
      _$_SendMessageRequestDtoUseCase _value,
      $Res Function(_$_SendMessageRequestDtoUseCase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = freezed,
    Object? body = freezed,
  }) {
    return _then(_$_SendMessageRequestDtoUseCase(
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SendMessageRequestDtoUseCase
    with DiagnosticableTreeMixin
    implements _SendMessageRequestDtoUseCase {
  const _$_SendMessageRequestDtoUseCase({this.subject, this.body});

  factory _$_SendMessageRequestDtoUseCase.fromJson(Map<String, dynamic> json) =>
      _$$_SendMessageRequestDtoUseCaseFromJson(json);

  @override
  final String? subject;
  @override
  final String? body;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SendMessageRequestDtoUseCase(subject: $subject, body: $body)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SendMessageRequestDtoUseCase'))
      ..add(DiagnosticsProperty('subject', subject))
      ..add(DiagnosticsProperty('body', body));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendMessageRequestDtoUseCase &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, subject, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendMessageRequestDtoUseCaseCopyWith<_$_SendMessageRequestDtoUseCase>
      get copyWith => __$$_SendMessageRequestDtoUseCaseCopyWithImpl<
          _$_SendMessageRequestDtoUseCase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SendMessageRequestDtoUseCaseToJson(
      this,
    );
  }
}

abstract class _SendMessageRequestDtoUseCase
    implements SendMessageRequestDtoUseCase {
  const factory _SendMessageRequestDtoUseCase(
      {final String? subject,
      final String? body}) = _$_SendMessageRequestDtoUseCase;

  factory _SendMessageRequestDtoUseCase.fromJson(Map<String, dynamic> json) =
      _$_SendMessageRequestDtoUseCase.fromJson;

  @override
  String? get subject;
  @override
  String? get body;
  @override
  @JsonKey(ignore: true)
  _$$_SendMessageRequestDtoUseCaseCopyWith<_$_SendMessageRequestDtoUseCase>
      get copyWith => throw _privateConstructorUsedError;
}
