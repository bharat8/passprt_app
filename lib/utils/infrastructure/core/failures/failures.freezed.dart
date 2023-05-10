// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) value,
    required TResult Function() connection,
    required TResult Function(int? code, String? message) serverError,
    required TResult Function(String? message) localError,
    required TResult Function(String? message) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? value,
    TResult? Function()? connection,
    TResult? Function(int? code, String? message)? serverError,
    TResult? Function(String? message)? localError,
    TResult? Function(String? message)? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? value,
    TResult Function()? connection,
    TResult Function(int? code, String? message)? serverError,
    TResult Function(String? message)? localError,
    TResult Function(String? message)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Value value) value,
    required TResult Function(_Connection value) connection,
    required TResult Function(ServerError value) serverError,
    required TResult Function(_LocalError value) localError,
    required TResult Function(_Unexpected value) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Value value)? value,
    TResult? Function(_Connection value)? connection,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(_LocalError value)? localError,
    TResult? Function(_Unexpected value)? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Value value)? value,
    TResult Function(_Connection value)? connection,
    TResult Function(ServerError value)? serverError,
    TResult Function(_LocalError value)? localError,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ValueCopyWith<$Res> {
  factory _$$_ValueCopyWith(_$_Value value, $Res Function(_$_Value) then) =
      __$$_ValueCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_ValueCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res, _$_Value>
    implements _$$_ValueCopyWith<$Res> {
  __$$_ValueCopyWithImpl(_$_Value _value, $Res Function(_$_Value) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_Value(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Value implements _Value {
  const _$_Value(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.value(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Value &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValueCopyWith<_$_Value> get copyWith =>
      __$$_ValueCopyWithImpl<_$_Value>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) value,
    required TResult Function() connection,
    required TResult Function(int? code, String? message) serverError,
    required TResult Function(String? message) localError,
    required TResult Function(String? message) unexpected,
  }) {
    return value(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? value,
    TResult? Function()? connection,
    TResult? Function(int? code, String? message)? serverError,
    TResult? Function(String? message)? localError,
    TResult? Function(String? message)? unexpected,
  }) {
    return value?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? value,
    TResult Function()? connection,
    TResult Function(int? code, String? message)? serverError,
    TResult Function(String? message)? localError,
    TResult Function(String? message)? unexpected,
    required TResult orElse(),
  }) {
    if (value != null) {
      return value(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Value value) value,
    required TResult Function(_Connection value) connection,
    required TResult Function(ServerError value) serverError,
    required TResult Function(_LocalError value) localError,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return value(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Value value)? value,
    TResult? Function(_Connection value)? connection,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(_LocalError value)? localError,
    TResult? Function(_Unexpected value)? unexpected,
  }) {
    return value?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Value value)? value,
    TResult Function(_Connection value)? connection,
    TResult Function(ServerError value)? serverError,
    TResult Function(_LocalError value)? localError,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (value != null) {
      return value(this);
    }
    return orElse();
  }
}

abstract class _Value implements Failure {
  const factory _Value(final String? message) = _$_Value;

  String? get message;
  @JsonKey(ignore: true)
  _$$_ValueCopyWith<_$_Value> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ConnectionCopyWith<$Res> {
  factory _$$_ConnectionCopyWith(
          _$_Connection value, $Res Function(_$_Connection) then) =
      __$$_ConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ConnectionCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_Connection>
    implements _$$_ConnectionCopyWith<$Res> {
  __$$_ConnectionCopyWithImpl(
      _$_Connection _value, $Res Function(_$_Connection) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Connection implements _Connection {
  const _$_Connection();

  @override
  String toString() {
    return 'Failure.connection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Connection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) value,
    required TResult Function() connection,
    required TResult Function(int? code, String? message) serverError,
    required TResult Function(String? message) localError,
    required TResult Function(String? message) unexpected,
  }) {
    return connection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? value,
    TResult? Function()? connection,
    TResult? Function(int? code, String? message)? serverError,
    TResult? Function(String? message)? localError,
    TResult? Function(String? message)? unexpected,
  }) {
    return connection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? value,
    TResult Function()? connection,
    TResult Function(int? code, String? message)? serverError,
    TResult Function(String? message)? localError,
    TResult Function(String? message)? unexpected,
    required TResult orElse(),
  }) {
    if (connection != null) {
      return connection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Value value) value,
    required TResult Function(_Connection value) connection,
    required TResult Function(ServerError value) serverError,
    required TResult Function(_LocalError value) localError,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return connection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Value value)? value,
    TResult? Function(_Connection value)? connection,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(_LocalError value)? localError,
    TResult? Function(_Unexpected value)? unexpected,
  }) {
    return connection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Value value)? value,
    TResult Function(_Connection value)? connection,
    TResult Function(ServerError value)? serverError,
    TResult Function(_LocalError value)? localError,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (connection != null) {
      return connection(this);
    }
    return orElse();
  }
}

abstract class _Connection implements Failure {
  const factory _Connection() = _$_Connection;
}

/// @nodoc
abstract class _$$ServerErrorCopyWith<$Res> {
  factory _$$ServerErrorCopyWith(
          _$ServerError value, $Res Function(_$ServerError) then) =
      __$$ServerErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({int? code, String? message});
}

/// @nodoc
class __$$ServerErrorCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerError>
    implements _$$ServerErrorCopyWith<$Res> {
  __$$ServerErrorCopyWithImpl(
      _$ServerError _value, $Res Function(_$ServerError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ServerError(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError({this.code, this.message});

  @override
  final int? code;
  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.serverError(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerError &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerErrorCopyWith<_$ServerError> get copyWith =>
      __$$ServerErrorCopyWithImpl<_$ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) value,
    required TResult Function() connection,
    required TResult Function(int? code, String? message) serverError,
    required TResult Function(String? message) localError,
    required TResult Function(String? message) unexpected,
  }) {
    return serverError(code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? value,
    TResult? Function()? connection,
    TResult? Function(int? code, String? message)? serverError,
    TResult? Function(String? message)? localError,
    TResult? Function(String? message)? unexpected,
  }) {
    return serverError?.call(code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? value,
    TResult Function()? connection,
    TResult Function(int? code, String? message)? serverError,
    TResult Function(String? message)? localError,
    TResult Function(String? message)? unexpected,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Value value) value,
    required TResult Function(_Connection value) connection,
    required TResult Function(ServerError value) serverError,
    required TResult Function(_LocalError value) localError,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Value value)? value,
    TResult? Function(_Connection value)? connection,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(_LocalError value)? localError,
    TResult? Function(_Unexpected value)? unexpected,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Value value)? value,
    TResult Function(_Connection value)? connection,
    TResult Function(ServerError value)? serverError,
    TResult Function(_LocalError value)? localError,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements Failure {
  const factory ServerError({final int? code, final String? message}) =
      _$ServerError;

  int? get code;
  String? get message;
  @JsonKey(ignore: true)
  _$$ServerErrorCopyWith<_$ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LocalErrorCopyWith<$Res> {
  factory _$$_LocalErrorCopyWith(
          _$_LocalError value, $Res Function(_$_LocalError) then) =
      __$$_LocalErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_LocalErrorCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_LocalError>
    implements _$$_LocalErrorCopyWith<$Res> {
  __$$_LocalErrorCopyWithImpl(
      _$_LocalError _value, $Res Function(_$_LocalError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_LocalError(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LocalError implements _LocalError {
  const _$_LocalError({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.localError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocalErrorCopyWith<_$_LocalError> get copyWith =>
      __$$_LocalErrorCopyWithImpl<_$_LocalError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) value,
    required TResult Function() connection,
    required TResult Function(int? code, String? message) serverError,
    required TResult Function(String? message) localError,
    required TResult Function(String? message) unexpected,
  }) {
    return localError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? value,
    TResult? Function()? connection,
    TResult? Function(int? code, String? message)? serverError,
    TResult? Function(String? message)? localError,
    TResult? Function(String? message)? unexpected,
  }) {
    return localError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? value,
    TResult Function()? connection,
    TResult Function(int? code, String? message)? serverError,
    TResult Function(String? message)? localError,
    TResult Function(String? message)? unexpected,
    required TResult orElse(),
  }) {
    if (localError != null) {
      return localError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Value value) value,
    required TResult Function(_Connection value) connection,
    required TResult Function(ServerError value) serverError,
    required TResult Function(_LocalError value) localError,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return localError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Value value)? value,
    TResult? Function(_Connection value)? connection,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(_LocalError value)? localError,
    TResult? Function(_Unexpected value)? unexpected,
  }) {
    return localError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Value value)? value,
    TResult Function(_Connection value)? connection,
    TResult Function(ServerError value)? serverError,
    TResult Function(_LocalError value)? localError,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (localError != null) {
      return localError(this);
    }
    return orElse();
  }
}

abstract class _LocalError implements Failure {
  const factory _LocalError({final String? message}) = _$_LocalError;

  String? get message;
  @JsonKey(ignore: true)
  _$$_LocalErrorCopyWith<_$_LocalError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnexpectedCopyWith<$Res> {
  factory _$$_UnexpectedCopyWith(
          _$_Unexpected value, $Res Function(_$_Unexpected) then) =
      __$$_UnexpectedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_UnexpectedCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_Unexpected>
    implements _$$_UnexpectedCopyWith<$Res> {
  __$$_UnexpectedCopyWithImpl(
      _$_Unexpected _value, $Res Function(_$_Unexpected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_Unexpected(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Unexpected implements _Unexpected {
  const _$_Unexpected(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.unexpected(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Unexpected &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnexpectedCopyWith<_$_Unexpected> get copyWith =>
      __$$_UnexpectedCopyWithImpl<_$_Unexpected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) value,
    required TResult Function() connection,
    required TResult Function(int? code, String? message) serverError,
    required TResult Function(String? message) localError,
    required TResult Function(String? message) unexpected,
  }) {
    return unexpected(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? value,
    TResult? Function()? connection,
    TResult? Function(int? code, String? message)? serverError,
    TResult? Function(String? message)? localError,
    TResult? Function(String? message)? unexpected,
  }) {
    return unexpected?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? value,
    TResult Function()? connection,
    TResult Function(int? code, String? message)? serverError,
    TResult Function(String? message)? localError,
    TResult Function(String? message)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Value value) value,
    required TResult Function(_Connection value) connection,
    required TResult Function(ServerError value) serverError,
    required TResult Function(_LocalError value) localError,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Value value)? value,
    TResult? Function(_Connection value)? connection,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(_LocalError value)? localError,
    TResult? Function(_Unexpected value)? unexpected,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Value value)? value,
    TResult Function(_Connection value)? connection,
    TResult Function(ServerError value)? serverError,
    TResult Function(_LocalError value)? localError,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements Failure {
  const factory _Unexpected(final String? message) = _$_Unexpected;

  String? get message;
  @JsonKey(ignore: true)
  _$$_UnexpectedCopyWith<_$_Unexpected> get copyWith =>
      throw _privateConstructorUsedError;
}
