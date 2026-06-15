// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Status<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Status<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Status<$T>()';
}


}

/// @nodoc
class $StatusCopyWith<T,$Res>  {
$StatusCopyWith(Status<T> _, $Res Function(Status<T>) __);
}


/// Adds pattern-matching-related methods to [Status].
extension StatusPatterns<T> on Status<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( StatusInitial<T> value)?  initial,TResult Function( StatusLoading<T> value)?  loading,TResult Function( StatusSuccess<T> value)?  success,TResult Function( StatusFailure<T> value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case StatusInitial() when initial != null:
return initial(_that);case StatusLoading() when loading != null:
return loading(_that);case StatusSuccess() when success != null:
return success(_that);case StatusFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( StatusInitial<T> value)  initial,required TResult Function( StatusLoading<T> value)  loading,required TResult Function( StatusSuccess<T> value)  success,required TResult Function( StatusFailure<T> value)  failure,}){
final _that = this;
switch (_that) {
case StatusInitial():
return initial(_that);case StatusLoading():
return loading(_that);case StatusSuccess():
return success(_that);case StatusFailure():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( StatusInitial<T> value)?  initial,TResult? Function( StatusLoading<T> value)?  loading,TResult? Function( StatusSuccess<T> value)?  success,TResult? Function( StatusFailure<T> value)?  failure,}){
final _that = this;
switch (_that) {
case StatusInitial() when initial != null:
return initial(_that);case StatusLoading() when loading != null:
return loading(_that);case StatusSuccess() when success != null:
return success(_that);case StatusFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( T? data)?  success,TResult Function( String errorMessage)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case StatusInitial() when initial != null:
return initial();case StatusLoading() when loading != null:
return loading();case StatusSuccess() when success != null:
return success(_that.data);case StatusFailure() when failure != null:
return failure(_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( T? data)  success,required TResult Function( String errorMessage)  failure,}) {final _that = this;
switch (_that) {
case StatusInitial():
return initial();case StatusLoading():
return loading();case StatusSuccess():
return success(_that.data);case StatusFailure():
return failure(_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( T? data)?  success,TResult? Function( String errorMessage)?  failure,}) {final _that = this;
switch (_that) {
case StatusInitial() when initial != null:
return initial();case StatusLoading() when loading != null:
return loading();case StatusSuccess() when success != null:
return success(_that.data);case StatusFailure() when failure != null:
return failure(_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class StatusInitial<T> implements Status<T> {
  const StatusInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatusInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Status<$T>.initial()';
}


}




/// @nodoc


class StatusLoading<T> implements Status<T> {
  const StatusLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatusLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Status<$T>.loading()';
}


}




/// @nodoc


class StatusSuccess<T> implements Status<T> {
  const StatusSuccess({this.data});
  

 final  T? data;

/// Create a copy of Status
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatusSuccessCopyWith<T, StatusSuccess<T>> get copyWith => _$StatusSuccessCopyWithImpl<T, StatusSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatusSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'Status<$T>.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $StatusSuccessCopyWith<T,$Res> implements $StatusCopyWith<T, $Res> {
  factory $StatusSuccessCopyWith(StatusSuccess<T> value, $Res Function(StatusSuccess<T>) _then) = _$StatusSuccessCopyWithImpl;
@useResult
$Res call({
 T? data
});




}
/// @nodoc
class _$StatusSuccessCopyWithImpl<T,$Res>
    implements $StatusSuccessCopyWith<T, $Res> {
  _$StatusSuccessCopyWithImpl(this._self, this._then);

  final StatusSuccess<T> _self;
  final $Res Function(StatusSuccess<T>) _then;

/// Create a copy of Status
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(StatusSuccess<T>(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}

/// @nodoc


class StatusFailure<T> implements Status<T> {
  const StatusFailure(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of Status
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatusFailureCopyWith<T, StatusFailure<T>> get copyWith => _$StatusFailureCopyWithImpl<T, StatusFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatusFailure<T>&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'Status<$T>.failure(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $StatusFailureCopyWith<T,$Res> implements $StatusCopyWith<T, $Res> {
  factory $StatusFailureCopyWith(StatusFailure<T> value, $Res Function(StatusFailure<T>) _then) = _$StatusFailureCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$StatusFailureCopyWithImpl<T,$Res>
    implements $StatusFailureCopyWith<T, $Res> {
  _$StatusFailureCopyWithImpl(this._self, this._then);

  final StatusFailure<T> _self;
  final $Res Function(StatusFailure<T>) _then;

/// Create a copy of Status
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(StatusFailure<T>(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
