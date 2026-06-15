// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rate_history_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RateHistoryPoint {

 DateTime get date; double get rate;
/// Create a copy of RateHistoryPoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RateHistoryPointCopyWith<RateHistoryPoint> get copyWith => _$RateHistoryPointCopyWithImpl<RateHistoryPoint>(this as RateHistoryPoint, _$identity);

  /// Serializes this RateHistoryPoint to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RateHistoryPoint&&(identical(other.date, date) || other.date == date)&&(identical(other.rate, rate) || other.rate == rate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,rate);

@override
String toString() {
  return 'RateHistoryPoint(date: $date, rate: $rate)';
}


}

/// @nodoc
abstract mixin class $RateHistoryPointCopyWith<$Res>  {
  factory $RateHistoryPointCopyWith(RateHistoryPoint value, $Res Function(RateHistoryPoint) _then) = _$RateHistoryPointCopyWithImpl;
@useResult
$Res call({
 DateTime date, double rate
});




}
/// @nodoc
class _$RateHistoryPointCopyWithImpl<$Res>
    implements $RateHistoryPointCopyWith<$Res> {
  _$RateHistoryPointCopyWithImpl(this._self, this._then);

  final RateHistoryPoint _self;
  final $Res Function(RateHistoryPoint) _then;

/// Create a copy of RateHistoryPoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? rate = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [RateHistoryPoint].
extension RateHistoryPointPatterns on RateHistoryPoint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RateHistoryPoint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RateHistoryPoint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RateHistoryPoint value)  $default,){
final _that = this;
switch (_that) {
case _RateHistoryPoint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RateHistoryPoint value)?  $default,){
final _that = this;
switch (_that) {
case _RateHistoryPoint() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime date,  double rate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RateHistoryPoint() when $default != null:
return $default(_that.date,_that.rate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime date,  double rate)  $default,) {final _that = this;
switch (_that) {
case _RateHistoryPoint():
return $default(_that.date,_that.rate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime date,  double rate)?  $default,) {final _that = this;
switch (_that) {
case _RateHistoryPoint() when $default != null:
return $default(_that.date,_that.rate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RateHistoryPoint implements RateHistoryPoint {
  const _RateHistoryPoint({required this.date, required this.rate});
  factory _RateHistoryPoint.fromJson(Map<String, dynamic> json) => _$RateHistoryPointFromJson(json);

@override final  DateTime date;
@override final  double rate;

/// Create a copy of RateHistoryPoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RateHistoryPointCopyWith<_RateHistoryPoint> get copyWith => __$RateHistoryPointCopyWithImpl<_RateHistoryPoint>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RateHistoryPointToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RateHistoryPoint&&(identical(other.date, date) || other.date == date)&&(identical(other.rate, rate) || other.rate == rate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,rate);

@override
String toString() {
  return 'RateHistoryPoint(date: $date, rate: $rate)';
}


}

/// @nodoc
abstract mixin class _$RateHistoryPointCopyWith<$Res> implements $RateHistoryPointCopyWith<$Res> {
  factory _$RateHistoryPointCopyWith(_RateHistoryPoint value, $Res Function(_RateHistoryPoint) _then) = __$RateHistoryPointCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, double rate
});




}
/// @nodoc
class __$RateHistoryPointCopyWithImpl<$Res>
    implements _$RateHistoryPointCopyWith<$Res> {
  __$RateHistoryPointCopyWithImpl(this._self, this._then);

  final _RateHistoryPoint _self;
  final $Res Function(_RateHistoryPoint) _then;

/// Create a copy of RateHistoryPoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? rate = null,}) {
  return _then(_RateHistoryPoint(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
