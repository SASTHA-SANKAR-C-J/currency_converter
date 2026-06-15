// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversion_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConversionResult {

 double get amount; double get convertedAmount; double get rate; String get fromCurrency; String get toCurrency; DateTime get timestamp;
/// Create a copy of ConversionResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConversionResultCopyWith<ConversionResult> get copyWith => _$ConversionResultCopyWithImpl<ConversionResult>(this as ConversionResult, _$identity);

  /// Serializes this ConversionResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConversionResult&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.convertedAmount, convertedAmount) || other.convertedAmount == convertedAmount)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.fromCurrency, fromCurrency) || other.fromCurrency == fromCurrency)&&(identical(other.toCurrency, toCurrency) || other.toCurrency == toCurrency)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,convertedAmount,rate,fromCurrency,toCurrency,timestamp);

@override
String toString() {
  return 'ConversionResult(amount: $amount, convertedAmount: $convertedAmount, rate: $rate, fromCurrency: $fromCurrency, toCurrency: $toCurrency, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $ConversionResultCopyWith<$Res>  {
  factory $ConversionResultCopyWith(ConversionResult value, $Res Function(ConversionResult) _then) = _$ConversionResultCopyWithImpl;
@useResult
$Res call({
 double amount, double convertedAmount, double rate, String fromCurrency, String toCurrency, DateTime timestamp
});




}
/// @nodoc
class _$ConversionResultCopyWithImpl<$Res>
    implements $ConversionResultCopyWith<$Res> {
  _$ConversionResultCopyWithImpl(this._self, this._then);

  final ConversionResult _self;
  final $Res Function(ConversionResult) _then;

/// Create a copy of ConversionResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = null,Object? convertedAmount = null,Object? rate = null,Object? fromCurrency = null,Object? toCurrency = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,convertedAmount: null == convertedAmount ? _self.convertedAmount : convertedAmount // ignore: cast_nullable_to_non_nullable
as double,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double,fromCurrency: null == fromCurrency ? _self.fromCurrency : fromCurrency // ignore: cast_nullable_to_non_nullable
as String,toCurrency: null == toCurrency ? _self.toCurrency : toCurrency // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [ConversionResult].
extension ConversionResultPatterns on ConversionResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConversionResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConversionResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConversionResult value)  $default,){
final _that = this;
switch (_that) {
case _ConversionResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConversionResult value)?  $default,){
final _that = this;
switch (_that) {
case _ConversionResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double amount,  double convertedAmount,  double rate,  String fromCurrency,  String toCurrency,  DateTime timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConversionResult() when $default != null:
return $default(_that.amount,_that.convertedAmount,_that.rate,_that.fromCurrency,_that.toCurrency,_that.timestamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double amount,  double convertedAmount,  double rate,  String fromCurrency,  String toCurrency,  DateTime timestamp)  $default,) {final _that = this;
switch (_that) {
case _ConversionResult():
return $default(_that.amount,_that.convertedAmount,_that.rate,_that.fromCurrency,_that.toCurrency,_that.timestamp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double amount,  double convertedAmount,  double rate,  String fromCurrency,  String toCurrency,  DateTime timestamp)?  $default,) {final _that = this;
switch (_that) {
case _ConversionResult() when $default != null:
return $default(_that.amount,_that.convertedAmount,_that.rate,_that.fromCurrency,_that.toCurrency,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConversionResult implements ConversionResult {
  const _ConversionResult({required this.amount, required this.convertedAmount, required this.rate, required this.fromCurrency, required this.toCurrency, required this.timestamp});
  factory _ConversionResult.fromJson(Map<String, dynamic> json) => _$ConversionResultFromJson(json);

@override final  double amount;
@override final  double convertedAmount;
@override final  double rate;
@override final  String fromCurrency;
@override final  String toCurrency;
@override final  DateTime timestamp;

/// Create a copy of ConversionResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConversionResultCopyWith<_ConversionResult> get copyWith => __$ConversionResultCopyWithImpl<_ConversionResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConversionResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConversionResult&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.convertedAmount, convertedAmount) || other.convertedAmount == convertedAmount)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.fromCurrency, fromCurrency) || other.fromCurrency == fromCurrency)&&(identical(other.toCurrency, toCurrency) || other.toCurrency == toCurrency)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,convertedAmount,rate,fromCurrency,toCurrency,timestamp);

@override
String toString() {
  return 'ConversionResult(amount: $amount, convertedAmount: $convertedAmount, rate: $rate, fromCurrency: $fromCurrency, toCurrency: $toCurrency, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$ConversionResultCopyWith<$Res> implements $ConversionResultCopyWith<$Res> {
  factory _$ConversionResultCopyWith(_ConversionResult value, $Res Function(_ConversionResult) _then) = __$ConversionResultCopyWithImpl;
@override @useResult
$Res call({
 double amount, double convertedAmount, double rate, String fromCurrency, String toCurrency, DateTime timestamp
});




}
/// @nodoc
class __$ConversionResultCopyWithImpl<$Res>
    implements _$ConversionResultCopyWith<$Res> {
  __$ConversionResultCopyWithImpl(this._self, this._then);

  final _ConversionResult _self;
  final $Res Function(_ConversionResult) _then;

/// Create a copy of ConversionResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? convertedAmount = null,Object? rate = null,Object? fromCurrency = null,Object? toCurrency = null,Object? timestamp = null,}) {
  return _then(_ConversionResult(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,convertedAmount: null == convertedAmount ? _self.convertedAmount : convertedAmount // ignore: cast_nullable_to_non_nullable
as double,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double,fromCurrency: null == fromCurrency ? _self.fromCurrency : fromCurrency // ignore: cast_nullable_to_non_nullable
as String,toCurrency: null == toCurrency ? _self.toCurrency : toCurrency // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
