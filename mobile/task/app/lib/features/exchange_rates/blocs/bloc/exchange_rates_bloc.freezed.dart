// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchange_rates_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExchangeRatesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(String code) select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(String code)? select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String code)? select,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Select value) select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Select value)? select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Select value)? select,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeRatesEventCopyWith<$Res> {
  factory $ExchangeRatesEventCopyWith(
          ExchangeRatesEvent value, $Res Function(ExchangeRatesEvent) then) =
      _$ExchangeRatesEventCopyWithImpl<$Res, ExchangeRatesEvent>;
}

/// @nodoc
class _$ExchangeRatesEventCopyWithImpl<$Res, $Val extends ExchangeRatesEvent>
    implements $ExchangeRatesEventCopyWith<$Res> {
  _$ExchangeRatesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchCopyWith<$Res> {
  factory _$$_FetchCopyWith(_$_Fetch value, $Res Function(_$_Fetch) then) =
      __$$_FetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchCopyWithImpl<$Res>
    extends _$ExchangeRatesEventCopyWithImpl<$Res, _$_Fetch>
    implements _$$_FetchCopyWith<$Res> {
  __$$_FetchCopyWithImpl(_$_Fetch _value, $Res Function(_$_Fetch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Fetch implements _Fetch {
  const _$_Fetch();

  @override
  String toString() {
    return 'ExchangeRatesEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Fetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(String code) select,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(String code)? select,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String code)? select,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Select value) select,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Select value)? select,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Select value)? select,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements ExchangeRatesEvent {
  const factory _Fetch() = _$_Fetch;
}

/// @nodoc
abstract class _$$_SelectCopyWith<$Res> {
  factory _$$_SelectCopyWith(_$_Select value, $Res Function(_$_Select) then) =
      __$$_SelectCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$_SelectCopyWithImpl<$Res>
    extends _$ExchangeRatesEventCopyWithImpl<$Res, _$_Select>
    implements _$$_SelectCopyWith<$Res> {
  __$$_SelectCopyWithImpl(_$_Select _value, $Res Function(_$_Select) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$_Select(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Select implements _Select {
  const _$_Select(this.code);

  @override
  final String code;

  @override
  String toString() {
    return 'ExchangeRatesEvent.select(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Select &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectCopyWith<_$_Select> get copyWith =>
      __$$_SelectCopyWithImpl<_$_Select>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(String code) select,
  }) {
    return select(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(String code)? select,
  }) {
    return select?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String code)? select,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Select value) select,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Select value)? select,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Select value)? select,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class _Select implements ExchangeRatesEvent {
  const factory _Select(final String code) = _$_Select;

  String get code;
  @JsonKey(ignore: true)
  _$$_SelectCopyWith<_$_Select> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExchangeRatesState {
  StateStatus get status => throw _privateConstructorUsedError;
  List<ExchangeRate> get exchangeRates => throw _privateConstructorUsedError;
  ExchangeRate? get selectedExchangeRate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExchangeRatesStateCopyWith<ExchangeRatesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeRatesStateCopyWith<$Res> {
  factory $ExchangeRatesStateCopyWith(
          ExchangeRatesState value, $Res Function(ExchangeRatesState) then) =
      _$ExchangeRatesStateCopyWithImpl<$Res, ExchangeRatesState>;
  @useResult
  $Res call(
      {StateStatus status,
      List<ExchangeRate> exchangeRates,
      ExchangeRate? selectedExchangeRate});

  $StateStatusCopyWith<$Res> get status;
  $ExchangeRateCopyWith<$Res>? get selectedExchangeRate;
}

/// @nodoc
class _$ExchangeRatesStateCopyWithImpl<$Res, $Val extends ExchangeRatesState>
    implements $ExchangeRatesStateCopyWith<$Res> {
  _$ExchangeRatesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? exchangeRates = null,
    Object? selectedExchangeRate = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      exchangeRates: null == exchangeRates
          ? _value.exchangeRates
          : exchangeRates // ignore: cast_nullable_to_non_nullable
              as List<ExchangeRate>,
      selectedExchangeRate: freezed == selectedExchangeRate
          ? _value.selectedExchangeRate
          : selectedExchangeRate // ignore: cast_nullable_to_non_nullable
              as ExchangeRate?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StateStatusCopyWith<$Res> get status {
    return $StateStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ExchangeRateCopyWith<$Res>? get selectedExchangeRate {
    if (_value.selectedExchangeRate == null) {
      return null;
    }

    return $ExchangeRateCopyWith<$Res>(_value.selectedExchangeRate!, (value) {
      return _then(_value.copyWith(selectedExchangeRate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ExchangeRatesStateCopyWith<$Res>
    implements $ExchangeRatesStateCopyWith<$Res> {
  factory _$$_ExchangeRatesStateCopyWith(_$_ExchangeRatesState value,
          $Res Function(_$_ExchangeRatesState) then) =
      __$$_ExchangeRatesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus status,
      List<ExchangeRate> exchangeRates,
      ExchangeRate? selectedExchangeRate});

  @override
  $StateStatusCopyWith<$Res> get status;
  @override
  $ExchangeRateCopyWith<$Res>? get selectedExchangeRate;
}

/// @nodoc
class __$$_ExchangeRatesStateCopyWithImpl<$Res>
    extends _$ExchangeRatesStateCopyWithImpl<$Res, _$_ExchangeRatesState>
    implements _$$_ExchangeRatesStateCopyWith<$Res> {
  __$$_ExchangeRatesStateCopyWithImpl(
      _$_ExchangeRatesState _value, $Res Function(_$_ExchangeRatesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? exchangeRates = null,
    Object? selectedExchangeRate = freezed,
  }) {
    return _then(_$_ExchangeRatesState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      exchangeRates: null == exchangeRates
          ? _value._exchangeRates
          : exchangeRates // ignore: cast_nullable_to_non_nullable
              as List<ExchangeRate>,
      selectedExchangeRate: freezed == selectedExchangeRate
          ? _value.selectedExchangeRate
          : selectedExchangeRate // ignore: cast_nullable_to_non_nullable
              as ExchangeRate?,
    ));
  }
}

/// @nodoc

class _$_ExchangeRatesState implements _ExchangeRatesState {
  const _$_ExchangeRatesState(
      {this.status = const StateStatus(),
      final List<ExchangeRate> exchangeRates = const [],
      this.selectedExchangeRate})
      : _exchangeRates = exchangeRates;

  @override
  @JsonKey()
  final StateStatus status;
  final List<ExchangeRate> _exchangeRates;
  @override
  @JsonKey()
  List<ExchangeRate> get exchangeRates {
    if (_exchangeRates is EqualUnmodifiableListView) return _exchangeRates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exchangeRates);
  }

  @override
  final ExchangeRate? selectedExchangeRate;

  @override
  String toString() {
    return 'ExchangeRatesState(status: $status, exchangeRates: $exchangeRates, selectedExchangeRate: $selectedExchangeRate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExchangeRatesState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._exchangeRates, _exchangeRates) &&
            (identical(other.selectedExchangeRate, selectedExchangeRate) ||
                other.selectedExchangeRate == selectedExchangeRate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_exchangeRates),
      selectedExchangeRate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExchangeRatesStateCopyWith<_$_ExchangeRatesState> get copyWith =>
      __$$_ExchangeRatesStateCopyWithImpl<_$_ExchangeRatesState>(
          this, _$identity);
}

abstract class _ExchangeRatesState implements ExchangeRatesState {
  const factory _ExchangeRatesState(
      {final StateStatus status,
      final List<ExchangeRate> exchangeRates,
      final ExchangeRate? selectedExchangeRate}) = _$_ExchangeRatesState;

  @override
  StateStatus get status;
  @override
  List<ExchangeRate> get exchangeRates;
  @override
  ExchangeRate? get selectedExchangeRate;
  @override
  @JsonKey(ignore: true)
  _$$_ExchangeRatesStateCopyWith<_$_ExchangeRatesState> get copyWith =>
      throw _privateConstructorUsedError;
}
