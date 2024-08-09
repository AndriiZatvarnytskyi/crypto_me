// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crypto_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CryptoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Coin> coins, int page, bool nextPageLoading)
        content,
    required TResult Function(ErrorStatus error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Coin> coins, int page, bool nextPageLoading)?
        content,
    TResult? Function(ErrorStatus error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Coin> coins, int page, bool nextPageLoading)? content,
    TResult Function(ErrorStatus error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CryptoStateStateInitial value) loading,
    required TResult Function(CryptoStateContent value) content,
    required TResult Function(CryptoStateStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CryptoStateStateInitial value)? loading,
    TResult? Function(CryptoStateContent value)? content,
    TResult? Function(CryptoStateStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CryptoStateStateInitial value)? loading,
    TResult Function(CryptoStateContent value)? content,
    TResult Function(CryptoStateStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoStateCopyWith<$Res> {
  factory $CryptoStateCopyWith(
          CryptoState value, $Res Function(CryptoState) then) =
      _$CryptoStateCopyWithImpl<$Res, CryptoState>;
}

/// @nodoc
class _$CryptoStateCopyWithImpl<$Res, $Val extends CryptoState>
    implements $CryptoStateCopyWith<$Res> {
  _$CryptoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CryptoStateStateInitialImplCopyWith<$Res> {
  factory _$$CryptoStateStateInitialImplCopyWith(
          _$CryptoStateStateInitialImpl value,
          $Res Function(_$CryptoStateStateInitialImpl) then) =
      __$$CryptoStateStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CryptoStateStateInitialImplCopyWithImpl<$Res>
    extends _$CryptoStateCopyWithImpl<$Res, _$CryptoStateStateInitialImpl>
    implements _$$CryptoStateStateInitialImplCopyWith<$Res> {
  __$$CryptoStateStateInitialImplCopyWithImpl(
      _$CryptoStateStateInitialImpl _value,
      $Res Function(_$CryptoStateStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CryptoStateStateInitialImpl implements CryptoStateStateInitial {
  const _$CryptoStateStateInitialImpl();

  @override
  String toString() {
    return 'CryptoState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CryptoStateStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Coin> coins, int page, bool nextPageLoading)
        content,
    required TResult Function(ErrorStatus error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Coin> coins, int page, bool nextPageLoading)?
        content,
    TResult? Function(ErrorStatus error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Coin> coins, int page, bool nextPageLoading)? content,
    TResult Function(ErrorStatus error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CryptoStateStateInitial value) loading,
    required TResult Function(CryptoStateContent value) content,
    required TResult Function(CryptoStateStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CryptoStateStateInitial value)? loading,
    TResult? Function(CryptoStateContent value)? content,
    TResult? Function(CryptoStateStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CryptoStateStateInitial value)? loading,
    TResult Function(CryptoStateContent value)? content,
    TResult Function(CryptoStateStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CryptoStateStateInitial implements CryptoState {
  const factory CryptoStateStateInitial() = _$CryptoStateStateInitialImpl;
}

/// @nodoc
abstract class _$$CryptoStateContentImplCopyWith<$Res> {
  factory _$$CryptoStateContentImplCopyWith(_$CryptoStateContentImpl value,
          $Res Function(_$CryptoStateContentImpl) then) =
      __$$CryptoStateContentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Coin> coins, int page, bool nextPageLoading});
}

/// @nodoc
class __$$CryptoStateContentImplCopyWithImpl<$Res>
    extends _$CryptoStateCopyWithImpl<$Res, _$CryptoStateContentImpl>
    implements _$$CryptoStateContentImplCopyWith<$Res> {
  __$$CryptoStateContentImplCopyWithImpl(_$CryptoStateContentImpl _value,
      $Res Function(_$CryptoStateContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coins = null,
    Object? page = null,
    Object? nextPageLoading = null,
  }) {
    return _then(_$CryptoStateContentImpl(
      coins: null == coins
          ? _value._coins
          : coins // ignore: cast_nullable_to_non_nullable
              as List<Coin>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      nextPageLoading: null == nextPageLoading
          ? _value.nextPageLoading
          : nextPageLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CryptoStateContentImpl implements CryptoStateContent {
  const _$CryptoStateContentImpl(
      {final List<Coin> coins = const [],
      this.page = 1,
      this.nextPageLoading = false})
      : _coins = coins;

  final List<Coin> _coins;
  @override
  @JsonKey()
  List<Coin> get coins {
    if (_coins is EqualUnmodifiableListView) return _coins;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coins);
  }

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final bool nextPageLoading;

  @override
  String toString() {
    return 'CryptoState.content(coins: $coins, page: $page, nextPageLoading: $nextPageLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CryptoStateContentImpl &&
            const DeepCollectionEquality().equals(other._coins, _coins) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.nextPageLoading, nextPageLoading) ||
                other.nextPageLoading == nextPageLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_coins), page, nextPageLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CryptoStateContentImplCopyWith<_$CryptoStateContentImpl> get copyWith =>
      __$$CryptoStateContentImplCopyWithImpl<_$CryptoStateContentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Coin> coins, int page, bool nextPageLoading)
        content,
    required TResult Function(ErrorStatus error) error,
  }) {
    return content(coins, page, nextPageLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Coin> coins, int page, bool nextPageLoading)?
        content,
    TResult? Function(ErrorStatus error)? error,
  }) {
    return content?.call(coins, page, nextPageLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Coin> coins, int page, bool nextPageLoading)? content,
    TResult Function(ErrorStatus error)? error,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(coins, page, nextPageLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CryptoStateStateInitial value) loading,
    required TResult Function(CryptoStateContent value) content,
    required TResult Function(CryptoStateStateError value) error,
  }) {
    return content(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CryptoStateStateInitial value)? loading,
    TResult? Function(CryptoStateContent value)? content,
    TResult? Function(CryptoStateStateError value)? error,
  }) {
    return content?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CryptoStateStateInitial value)? loading,
    TResult Function(CryptoStateContent value)? content,
    TResult Function(CryptoStateStateError value)? error,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(this);
    }
    return orElse();
  }
}

abstract class CryptoStateContent implements CryptoState {
  const factory CryptoStateContent(
      {final List<Coin> coins,
      final int page,
      final bool nextPageLoading}) = _$CryptoStateContentImpl;

  List<Coin> get coins;
  int get page;
  bool get nextPageLoading;
  @JsonKey(ignore: true)
  _$$CryptoStateContentImplCopyWith<_$CryptoStateContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CryptoStateStateErrorImplCopyWith<$Res> {
  factory _$$CryptoStateStateErrorImplCopyWith(
          _$CryptoStateStateErrorImpl value,
          $Res Function(_$CryptoStateStateErrorImpl) then) =
      __$$CryptoStateStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorStatus error});
}

/// @nodoc
class __$$CryptoStateStateErrorImplCopyWithImpl<$Res>
    extends _$CryptoStateCopyWithImpl<$Res, _$CryptoStateStateErrorImpl>
    implements _$$CryptoStateStateErrorImplCopyWith<$Res> {
  __$$CryptoStateStateErrorImplCopyWithImpl(_$CryptoStateStateErrorImpl _value,
      $Res Function(_$CryptoStateStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$CryptoStateStateErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorStatus,
    ));
  }
}

/// @nodoc

class _$CryptoStateStateErrorImpl implements CryptoStateStateError {
  const _$CryptoStateStateErrorImpl({this.error = ErrorStatus.wrongRequest});

  @override
  @JsonKey()
  final ErrorStatus error;

  @override
  String toString() {
    return 'CryptoState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CryptoStateStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CryptoStateStateErrorImplCopyWith<_$CryptoStateStateErrorImpl>
      get copyWith => __$$CryptoStateStateErrorImplCopyWithImpl<
          _$CryptoStateStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Coin> coins, int page, bool nextPageLoading)
        content,
    required TResult Function(ErrorStatus error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Coin> coins, int page, bool nextPageLoading)?
        content,
    TResult? Function(ErrorStatus error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Coin> coins, int page, bool nextPageLoading)? content,
    TResult Function(ErrorStatus error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CryptoStateStateInitial value) loading,
    required TResult Function(CryptoStateContent value) content,
    required TResult Function(CryptoStateStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CryptoStateStateInitial value)? loading,
    TResult? Function(CryptoStateContent value)? content,
    TResult? Function(CryptoStateStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CryptoStateStateInitial value)? loading,
    TResult Function(CryptoStateContent value)? content,
    TResult Function(CryptoStateStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CryptoStateStateError implements CryptoState {
  const factory CryptoStateStateError({final ErrorStatus error}) =
      _$CryptoStateStateErrorImpl;

  ErrorStatus get error;
  @JsonKey(ignore: true)
  _$$CryptoStateStateErrorImplCopyWith<_$CryptoStateStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
