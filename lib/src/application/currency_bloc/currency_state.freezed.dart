// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CurrencyState {

 String get fromCurrency; String get toCurrency; double get amount; ConversionResult? get currentResult; List<RateHistoryPoint> get rateHistory; List<ConversionResult> get conversionHistory; Status get convertStatus; Status get historyStatus; Status get saveStatus;
/// Create a copy of CurrencyState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrencyStateCopyWith<CurrencyState> get copyWith => _$CurrencyStateCopyWithImpl<CurrencyState>(this as CurrencyState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrencyState&&(identical(other.fromCurrency, fromCurrency) || other.fromCurrency == fromCurrency)&&(identical(other.toCurrency, toCurrency) || other.toCurrency == toCurrency)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currentResult, currentResult) || other.currentResult == currentResult)&&const DeepCollectionEquality().equals(other.rateHistory, rateHistory)&&const DeepCollectionEquality().equals(other.conversionHistory, conversionHistory)&&(identical(other.convertStatus, convertStatus) || other.convertStatus == convertStatus)&&(identical(other.historyStatus, historyStatus) || other.historyStatus == historyStatus)&&(identical(other.saveStatus, saveStatus) || other.saveStatus == saveStatus));
}


@override
int get hashCode => Object.hash(runtimeType,fromCurrency,toCurrency,amount,currentResult,const DeepCollectionEquality().hash(rateHistory),const DeepCollectionEquality().hash(conversionHistory),convertStatus,historyStatus,saveStatus);

@override
String toString() {
  return 'CurrencyState(fromCurrency: $fromCurrency, toCurrency: $toCurrency, amount: $amount, currentResult: $currentResult, rateHistory: $rateHistory, conversionHistory: $conversionHistory, convertStatus: $convertStatus, historyStatus: $historyStatus, saveStatus: $saveStatus)';
}


}

/// @nodoc
abstract mixin class $CurrencyStateCopyWith<$Res>  {
  factory $CurrencyStateCopyWith(CurrencyState value, $Res Function(CurrencyState) _then) = _$CurrencyStateCopyWithImpl;
@useResult
$Res call({
 String fromCurrency, String toCurrency, double amount, ConversionResult? currentResult, List<RateHistoryPoint> rateHistory, List<ConversionResult> conversionHistory, Status convertStatus, Status historyStatus, Status saveStatus
});


$ConversionResultCopyWith<$Res>? get currentResult;$StatusCopyWith<dynamic, $Res> get convertStatus;$StatusCopyWith<dynamic, $Res> get historyStatus;$StatusCopyWith<dynamic, $Res> get saveStatus;

}
/// @nodoc
class _$CurrencyStateCopyWithImpl<$Res>
    implements $CurrencyStateCopyWith<$Res> {
  _$CurrencyStateCopyWithImpl(this._self, this._then);

  final CurrencyState _self;
  final $Res Function(CurrencyState) _then;

/// Create a copy of CurrencyState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fromCurrency = null,Object? toCurrency = null,Object? amount = null,Object? currentResult = freezed,Object? rateHistory = null,Object? conversionHistory = null,Object? convertStatus = null,Object? historyStatus = null,Object? saveStatus = null,}) {
  return _then(_self.copyWith(
fromCurrency: null == fromCurrency ? _self.fromCurrency : fromCurrency // ignore: cast_nullable_to_non_nullable
as String,toCurrency: null == toCurrency ? _self.toCurrency : toCurrency // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,currentResult: freezed == currentResult ? _self.currentResult : currentResult // ignore: cast_nullable_to_non_nullable
as ConversionResult?,rateHistory: null == rateHistory ? _self.rateHistory : rateHistory // ignore: cast_nullable_to_non_nullable
as List<RateHistoryPoint>,conversionHistory: null == conversionHistory ? _self.conversionHistory : conversionHistory // ignore: cast_nullable_to_non_nullable
as List<ConversionResult>,convertStatus: null == convertStatus ? _self.convertStatus : convertStatus // ignore: cast_nullable_to_non_nullable
as Status,historyStatus: null == historyStatus ? _self.historyStatus : historyStatus // ignore: cast_nullable_to_non_nullable
as Status,saveStatus: null == saveStatus ? _self.saveStatus : saveStatus // ignore: cast_nullable_to_non_nullable
as Status,
  ));
}
/// Create a copy of CurrencyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConversionResultCopyWith<$Res>? get currentResult {
    if (_self.currentResult == null) {
    return null;
  }

  return $ConversionResultCopyWith<$Res>(_self.currentResult!, (value) {
    return _then(_self.copyWith(currentResult: value));
  });
}/// Create a copy of CurrencyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusCopyWith<dynamic, $Res> get convertStatus {
  
  return $StatusCopyWith<dynamic, $Res>(_self.convertStatus, (value) {
    return _then(_self.copyWith(convertStatus: value));
  });
}/// Create a copy of CurrencyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusCopyWith<dynamic, $Res> get historyStatus {
  
  return $StatusCopyWith<dynamic, $Res>(_self.historyStatus, (value) {
    return _then(_self.copyWith(historyStatus: value));
  });
}/// Create a copy of CurrencyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusCopyWith<dynamic, $Res> get saveStatus {
  
  return $StatusCopyWith<dynamic, $Res>(_self.saveStatus, (value) {
    return _then(_self.copyWith(saveStatus: value));
  });
}
}


/// Adds pattern-matching-related methods to [CurrencyState].
extension CurrencyStatePatterns on CurrencyState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CurrencyState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CurrencyState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CurrencyState value)  $default,){
final _that = this;
switch (_that) {
case _CurrencyState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CurrencyState value)?  $default,){
final _that = this;
switch (_that) {
case _CurrencyState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String fromCurrency,  String toCurrency,  double amount,  ConversionResult? currentResult,  List<RateHistoryPoint> rateHistory,  List<ConversionResult> conversionHistory,  Status convertStatus,  Status historyStatus,  Status saveStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CurrencyState() when $default != null:
return $default(_that.fromCurrency,_that.toCurrency,_that.amount,_that.currentResult,_that.rateHistory,_that.conversionHistory,_that.convertStatus,_that.historyStatus,_that.saveStatus);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String fromCurrency,  String toCurrency,  double amount,  ConversionResult? currentResult,  List<RateHistoryPoint> rateHistory,  List<ConversionResult> conversionHistory,  Status convertStatus,  Status historyStatus,  Status saveStatus)  $default,) {final _that = this;
switch (_that) {
case _CurrencyState():
return $default(_that.fromCurrency,_that.toCurrency,_that.amount,_that.currentResult,_that.rateHistory,_that.conversionHistory,_that.convertStatus,_that.historyStatus,_that.saveStatus);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String fromCurrency,  String toCurrency,  double amount,  ConversionResult? currentResult,  List<RateHistoryPoint> rateHistory,  List<ConversionResult> conversionHistory,  Status convertStatus,  Status historyStatus,  Status saveStatus)?  $default,) {final _that = this;
switch (_that) {
case _CurrencyState() when $default != null:
return $default(_that.fromCurrency,_that.toCurrency,_that.amount,_that.currentResult,_that.rateHistory,_that.conversionHistory,_that.convertStatus,_that.historyStatus,_that.saveStatus);case _:
  return null;

}
}

}

/// @nodoc


class _CurrencyState implements CurrencyState {
  const _CurrencyState({required this.fromCurrency, required this.toCurrency, required this.amount, required this.currentResult, required final  List<RateHistoryPoint> rateHistory, required final  List<ConversionResult> conversionHistory, required this.convertStatus, required this.historyStatus, required this.saveStatus}): _rateHistory = rateHistory,_conversionHistory = conversionHistory;
  

@override final  String fromCurrency;
@override final  String toCurrency;
@override final  double amount;
@override final  ConversionResult? currentResult;
 final  List<RateHistoryPoint> _rateHistory;
@override List<RateHistoryPoint> get rateHistory {
  if (_rateHistory is EqualUnmodifiableListView) return _rateHistory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rateHistory);
}

 final  List<ConversionResult> _conversionHistory;
@override List<ConversionResult> get conversionHistory {
  if (_conversionHistory is EqualUnmodifiableListView) return _conversionHistory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_conversionHistory);
}

@override final  Status convertStatus;
@override final  Status historyStatus;
@override final  Status saveStatus;

/// Create a copy of CurrencyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrencyStateCopyWith<_CurrencyState> get copyWith => __$CurrencyStateCopyWithImpl<_CurrencyState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurrencyState&&(identical(other.fromCurrency, fromCurrency) || other.fromCurrency == fromCurrency)&&(identical(other.toCurrency, toCurrency) || other.toCurrency == toCurrency)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currentResult, currentResult) || other.currentResult == currentResult)&&const DeepCollectionEquality().equals(other._rateHistory, _rateHistory)&&const DeepCollectionEquality().equals(other._conversionHistory, _conversionHistory)&&(identical(other.convertStatus, convertStatus) || other.convertStatus == convertStatus)&&(identical(other.historyStatus, historyStatus) || other.historyStatus == historyStatus)&&(identical(other.saveStatus, saveStatus) || other.saveStatus == saveStatus));
}


@override
int get hashCode => Object.hash(runtimeType,fromCurrency,toCurrency,amount,currentResult,const DeepCollectionEquality().hash(_rateHistory),const DeepCollectionEquality().hash(_conversionHistory),convertStatus,historyStatus,saveStatus);

@override
String toString() {
  return 'CurrencyState(fromCurrency: $fromCurrency, toCurrency: $toCurrency, amount: $amount, currentResult: $currentResult, rateHistory: $rateHistory, conversionHistory: $conversionHistory, convertStatus: $convertStatus, historyStatus: $historyStatus, saveStatus: $saveStatus)';
}


}

/// @nodoc
abstract mixin class _$CurrencyStateCopyWith<$Res> implements $CurrencyStateCopyWith<$Res> {
  factory _$CurrencyStateCopyWith(_CurrencyState value, $Res Function(_CurrencyState) _then) = __$CurrencyStateCopyWithImpl;
@override @useResult
$Res call({
 String fromCurrency, String toCurrency, double amount, ConversionResult? currentResult, List<RateHistoryPoint> rateHistory, List<ConversionResult> conversionHistory, Status convertStatus, Status historyStatus, Status saveStatus
});


@override $ConversionResultCopyWith<$Res>? get currentResult;@override $StatusCopyWith<dynamic, $Res> get convertStatus;@override $StatusCopyWith<dynamic, $Res> get historyStatus;@override $StatusCopyWith<dynamic, $Res> get saveStatus;

}
/// @nodoc
class __$CurrencyStateCopyWithImpl<$Res>
    implements _$CurrencyStateCopyWith<$Res> {
  __$CurrencyStateCopyWithImpl(this._self, this._then);

  final _CurrencyState _self;
  final $Res Function(_CurrencyState) _then;

/// Create a copy of CurrencyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fromCurrency = null,Object? toCurrency = null,Object? amount = null,Object? currentResult = freezed,Object? rateHistory = null,Object? conversionHistory = null,Object? convertStatus = null,Object? historyStatus = null,Object? saveStatus = null,}) {
  return _then(_CurrencyState(
fromCurrency: null == fromCurrency ? _self.fromCurrency : fromCurrency // ignore: cast_nullable_to_non_nullable
as String,toCurrency: null == toCurrency ? _self.toCurrency : toCurrency // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,currentResult: freezed == currentResult ? _self.currentResult : currentResult // ignore: cast_nullable_to_non_nullable
as ConversionResult?,rateHistory: null == rateHistory ? _self._rateHistory : rateHistory // ignore: cast_nullable_to_non_nullable
as List<RateHistoryPoint>,conversionHistory: null == conversionHistory ? _self._conversionHistory : conversionHistory // ignore: cast_nullable_to_non_nullable
as List<ConversionResult>,convertStatus: null == convertStatus ? _self.convertStatus : convertStatus // ignore: cast_nullable_to_non_nullable
as Status,historyStatus: null == historyStatus ? _self.historyStatus : historyStatus // ignore: cast_nullable_to_non_nullable
as Status,saveStatus: null == saveStatus ? _self.saveStatus : saveStatus // ignore: cast_nullable_to_non_nullable
as Status,
  ));
}

/// Create a copy of CurrencyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConversionResultCopyWith<$Res>? get currentResult {
    if (_self.currentResult == null) {
    return null;
  }

  return $ConversionResultCopyWith<$Res>(_self.currentResult!, (value) {
    return _then(_self.copyWith(currentResult: value));
  });
}/// Create a copy of CurrencyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusCopyWith<dynamic, $Res> get convertStatus {
  
  return $StatusCopyWith<dynamic, $Res>(_self.convertStatus, (value) {
    return _then(_self.copyWith(convertStatus: value));
  });
}/// Create a copy of CurrencyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusCopyWith<dynamic, $Res> get historyStatus {
  
  return $StatusCopyWith<dynamic, $Res>(_self.historyStatus, (value) {
    return _then(_self.copyWith(historyStatus: value));
  });
}/// Create a copy of CurrencyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusCopyWith<dynamic, $Res> get saveStatus {
  
  return $StatusCopyWith<dynamic, $Res>(_self.saveStatus, (value) {
    return _then(_self.copyWith(saveStatus: value));
  });
}
}

// dart format on
