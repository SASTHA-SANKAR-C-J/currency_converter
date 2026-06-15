// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CurrencyEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrencyEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CurrencyEvent()';
}


}

/// @nodoc
class $CurrencyEventCopyWith<$Res>  {
$CurrencyEventCopyWith(CurrencyEvent _, $Res Function(CurrencyEvent) __);
}


/// Adds pattern-matching-related methods to [CurrencyEvent].
extension CurrencyEventPatterns on CurrencyEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UpdateAmount value)?  updateAmount,TResult Function( UpdateFrom value)?  updateFrom,TResult Function( UpdateTo value)?  updateTo,TResult Function( SwapCurrencies value)?  swapCurrencies,TResult Function( ConvertCurrency value)?  convert,TResult Function( LoadRateHistory value)?  loadRateHistory,TResult Function( LoadHistory value)?  loadHistory,TResult Function( SaveConversion value)?  saveConversion,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UpdateAmount() when updateAmount != null:
return updateAmount(_that);case UpdateFrom() when updateFrom != null:
return updateFrom(_that);case UpdateTo() when updateTo != null:
return updateTo(_that);case SwapCurrencies() when swapCurrencies != null:
return swapCurrencies(_that);case ConvertCurrency() when convert != null:
return convert(_that);case LoadRateHistory() when loadRateHistory != null:
return loadRateHistory(_that);case LoadHistory() when loadHistory != null:
return loadHistory(_that);case SaveConversion() when saveConversion != null:
return saveConversion(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UpdateAmount value)  updateAmount,required TResult Function( UpdateFrom value)  updateFrom,required TResult Function( UpdateTo value)  updateTo,required TResult Function( SwapCurrencies value)  swapCurrencies,required TResult Function( ConvertCurrency value)  convert,required TResult Function( LoadRateHistory value)  loadRateHistory,required TResult Function( LoadHistory value)  loadHistory,required TResult Function( SaveConversion value)  saveConversion,}){
final _that = this;
switch (_that) {
case UpdateAmount():
return updateAmount(_that);case UpdateFrom():
return updateFrom(_that);case UpdateTo():
return updateTo(_that);case SwapCurrencies():
return swapCurrencies(_that);case ConvertCurrency():
return convert(_that);case LoadRateHistory():
return loadRateHistory(_that);case LoadHistory():
return loadHistory(_that);case SaveConversion():
return saveConversion(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UpdateAmount value)?  updateAmount,TResult? Function( UpdateFrom value)?  updateFrom,TResult? Function( UpdateTo value)?  updateTo,TResult? Function( SwapCurrencies value)?  swapCurrencies,TResult? Function( ConvertCurrency value)?  convert,TResult? Function( LoadRateHistory value)?  loadRateHistory,TResult? Function( LoadHistory value)?  loadHistory,TResult? Function( SaveConversion value)?  saveConversion,}){
final _that = this;
switch (_that) {
case UpdateAmount() when updateAmount != null:
return updateAmount(_that);case UpdateFrom() when updateFrom != null:
return updateFrom(_that);case UpdateTo() when updateTo != null:
return updateTo(_that);case SwapCurrencies() when swapCurrencies != null:
return swapCurrencies(_that);case ConvertCurrency() when convert != null:
return convert(_that);case LoadRateHistory() when loadRateHistory != null:
return loadRateHistory(_that);case LoadHistory() when loadHistory != null:
return loadHistory(_that);case SaveConversion() when saveConversion != null:
return saveConversion(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( double amount)?  updateAmount,TResult Function( String currency)?  updateFrom,TResult Function( String currency)?  updateTo,TResult Function()?  swapCurrencies,TResult Function()?  convert,TResult Function( int days)?  loadRateHistory,TResult Function()?  loadHistory,TResult Function( ConversionResult result)?  saveConversion,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UpdateAmount() when updateAmount != null:
return updateAmount(_that.amount);case UpdateFrom() when updateFrom != null:
return updateFrom(_that.currency);case UpdateTo() when updateTo != null:
return updateTo(_that.currency);case SwapCurrencies() when swapCurrencies != null:
return swapCurrencies();case ConvertCurrency() when convert != null:
return convert();case LoadRateHistory() when loadRateHistory != null:
return loadRateHistory(_that.days);case LoadHistory() when loadHistory != null:
return loadHistory();case SaveConversion() when saveConversion != null:
return saveConversion(_that.result);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( double amount)  updateAmount,required TResult Function( String currency)  updateFrom,required TResult Function( String currency)  updateTo,required TResult Function()  swapCurrencies,required TResult Function()  convert,required TResult Function( int days)  loadRateHistory,required TResult Function()  loadHistory,required TResult Function( ConversionResult result)  saveConversion,}) {final _that = this;
switch (_that) {
case UpdateAmount():
return updateAmount(_that.amount);case UpdateFrom():
return updateFrom(_that.currency);case UpdateTo():
return updateTo(_that.currency);case SwapCurrencies():
return swapCurrencies();case ConvertCurrency():
return convert();case LoadRateHistory():
return loadRateHistory(_that.days);case LoadHistory():
return loadHistory();case SaveConversion():
return saveConversion(_that.result);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( double amount)?  updateAmount,TResult? Function( String currency)?  updateFrom,TResult? Function( String currency)?  updateTo,TResult? Function()?  swapCurrencies,TResult? Function()?  convert,TResult? Function( int days)?  loadRateHistory,TResult? Function()?  loadHistory,TResult? Function( ConversionResult result)?  saveConversion,}) {final _that = this;
switch (_that) {
case UpdateAmount() when updateAmount != null:
return updateAmount(_that.amount);case UpdateFrom() when updateFrom != null:
return updateFrom(_that.currency);case UpdateTo() when updateTo != null:
return updateTo(_that.currency);case SwapCurrencies() when swapCurrencies != null:
return swapCurrencies();case ConvertCurrency() when convert != null:
return convert();case LoadRateHistory() when loadRateHistory != null:
return loadRateHistory(_that.days);case LoadHistory() when loadHistory != null:
return loadHistory();case SaveConversion() when saveConversion != null:
return saveConversion(_that.result);case _:
  return null;

}
}

}

/// @nodoc


class UpdateAmount implements CurrencyEvent {
  const UpdateAmount(this.amount);
  

 final  double amount;

/// Create a copy of CurrencyEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateAmountCopyWith<UpdateAmount> get copyWith => _$UpdateAmountCopyWithImpl<UpdateAmount>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateAmount&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode => Object.hash(runtimeType,amount);

@override
String toString() {
  return 'CurrencyEvent.updateAmount(amount: $amount)';
}


}

/// @nodoc
abstract mixin class $UpdateAmountCopyWith<$Res> implements $CurrencyEventCopyWith<$Res> {
  factory $UpdateAmountCopyWith(UpdateAmount value, $Res Function(UpdateAmount) _then) = _$UpdateAmountCopyWithImpl;
@useResult
$Res call({
 double amount
});




}
/// @nodoc
class _$UpdateAmountCopyWithImpl<$Res>
    implements $UpdateAmountCopyWith<$Res> {
  _$UpdateAmountCopyWithImpl(this._self, this._then);

  final UpdateAmount _self;
  final $Res Function(UpdateAmount) _then;

/// Create a copy of CurrencyEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? amount = null,}) {
  return _then(UpdateAmount(
null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class UpdateFrom implements CurrencyEvent {
  const UpdateFrom(this.currency);
  

 final  String currency;

/// Create a copy of CurrencyEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateFromCopyWith<UpdateFrom> get copyWith => _$UpdateFromCopyWithImpl<UpdateFrom>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateFrom&&(identical(other.currency, currency) || other.currency == currency));
}


@override
int get hashCode => Object.hash(runtimeType,currency);

@override
String toString() {
  return 'CurrencyEvent.updateFrom(currency: $currency)';
}


}

/// @nodoc
abstract mixin class $UpdateFromCopyWith<$Res> implements $CurrencyEventCopyWith<$Res> {
  factory $UpdateFromCopyWith(UpdateFrom value, $Res Function(UpdateFrom) _then) = _$UpdateFromCopyWithImpl;
@useResult
$Res call({
 String currency
});




}
/// @nodoc
class _$UpdateFromCopyWithImpl<$Res>
    implements $UpdateFromCopyWith<$Res> {
  _$UpdateFromCopyWithImpl(this._self, this._then);

  final UpdateFrom _self;
  final $Res Function(UpdateFrom) _then;

/// Create a copy of CurrencyEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? currency = null,}) {
  return _then(UpdateFrom(
null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateTo implements CurrencyEvent {
  const UpdateTo(this.currency);
  

 final  String currency;

/// Create a copy of CurrencyEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateToCopyWith<UpdateTo> get copyWith => _$UpdateToCopyWithImpl<UpdateTo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateTo&&(identical(other.currency, currency) || other.currency == currency));
}


@override
int get hashCode => Object.hash(runtimeType,currency);

@override
String toString() {
  return 'CurrencyEvent.updateTo(currency: $currency)';
}


}

/// @nodoc
abstract mixin class $UpdateToCopyWith<$Res> implements $CurrencyEventCopyWith<$Res> {
  factory $UpdateToCopyWith(UpdateTo value, $Res Function(UpdateTo) _then) = _$UpdateToCopyWithImpl;
@useResult
$Res call({
 String currency
});




}
/// @nodoc
class _$UpdateToCopyWithImpl<$Res>
    implements $UpdateToCopyWith<$Res> {
  _$UpdateToCopyWithImpl(this._self, this._then);

  final UpdateTo _self;
  final $Res Function(UpdateTo) _then;

/// Create a copy of CurrencyEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? currency = null,}) {
  return _then(UpdateTo(
null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SwapCurrencies implements CurrencyEvent {
  const SwapCurrencies();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SwapCurrencies);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CurrencyEvent.swapCurrencies()';
}


}




/// @nodoc


class ConvertCurrency implements CurrencyEvent {
  const ConvertCurrency();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConvertCurrency);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CurrencyEvent.convert()';
}


}




/// @nodoc


class LoadRateHistory implements CurrencyEvent {
  const LoadRateHistory({this.days = 30});
  

@JsonKey() final  int days;

/// Create a copy of CurrencyEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadRateHistoryCopyWith<LoadRateHistory> get copyWith => _$LoadRateHistoryCopyWithImpl<LoadRateHistory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadRateHistory&&(identical(other.days, days) || other.days == days));
}


@override
int get hashCode => Object.hash(runtimeType,days);

@override
String toString() {
  return 'CurrencyEvent.loadRateHistory(days: $days)';
}


}

/// @nodoc
abstract mixin class $LoadRateHistoryCopyWith<$Res> implements $CurrencyEventCopyWith<$Res> {
  factory $LoadRateHistoryCopyWith(LoadRateHistory value, $Res Function(LoadRateHistory) _then) = _$LoadRateHistoryCopyWithImpl;
@useResult
$Res call({
 int days
});




}
/// @nodoc
class _$LoadRateHistoryCopyWithImpl<$Res>
    implements $LoadRateHistoryCopyWith<$Res> {
  _$LoadRateHistoryCopyWithImpl(this._self, this._then);

  final LoadRateHistory _self;
  final $Res Function(LoadRateHistory) _then;

/// Create a copy of CurrencyEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? days = null,}) {
  return _then(LoadRateHistory(
days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class LoadHistory implements CurrencyEvent {
  const LoadHistory();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadHistory);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CurrencyEvent.loadHistory()';
}


}




/// @nodoc


class SaveConversion implements CurrencyEvent {
  const SaveConversion(this.result);
  

 final  ConversionResult result;

/// Create a copy of CurrencyEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveConversionCopyWith<SaveConversion> get copyWith => _$SaveConversionCopyWithImpl<SaveConversion>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveConversion&&(identical(other.result, result) || other.result == result));
}


@override
int get hashCode => Object.hash(runtimeType,result);

@override
String toString() {
  return 'CurrencyEvent.saveConversion(result: $result)';
}


}

/// @nodoc
abstract mixin class $SaveConversionCopyWith<$Res> implements $CurrencyEventCopyWith<$Res> {
  factory $SaveConversionCopyWith(SaveConversion value, $Res Function(SaveConversion) _then) = _$SaveConversionCopyWithImpl;
@useResult
$Res call({
 ConversionResult result
});


$ConversionResultCopyWith<$Res> get result;

}
/// @nodoc
class _$SaveConversionCopyWithImpl<$Res>
    implements $SaveConversionCopyWith<$Res> {
  _$SaveConversionCopyWithImpl(this._self, this._then);

  final SaveConversion _self;
  final $Res Function(SaveConversion) _then;

/// Create a copy of CurrencyEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? result = null,}) {
  return _then(SaveConversion(
null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as ConversionResult,
  ));
}

/// Create a copy of CurrencyEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConversionResultCopyWith<$Res> get result {
  
  return $ConversionResultCopyWith<$Res>(_self.result, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}

// dart format on
