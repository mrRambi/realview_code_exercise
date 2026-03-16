// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'author_work.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthorWork {

/// OpenLibrary work key (e.g. "OL45804W").
 String get key; String get title;/// Cover edition key used to build cover image URLs.
 String? get coverEditionKey;/// Cover ID used with the OpenLibrary covers API.
 int? get coverId;/// First publish year if available.
 int? get firstPublishYear;
/// Create a copy of AuthorWork
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthorWorkCopyWith<AuthorWork> get copyWith => _$AuthorWorkCopyWithImpl<AuthorWork>(this as AuthorWork, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthorWork&&(identical(other.key, key) || other.key == key)&&(identical(other.title, title) || other.title == title)&&(identical(other.coverEditionKey, coverEditionKey) || other.coverEditionKey == coverEditionKey)&&(identical(other.coverId, coverId) || other.coverId == coverId)&&(identical(other.firstPublishYear, firstPublishYear) || other.firstPublishYear == firstPublishYear));
}


@override
int get hashCode => Object.hash(runtimeType,key,title,coverEditionKey,coverId,firstPublishYear);

@override
String toString() {
  return 'AuthorWork(key: $key, title: $title, coverEditionKey: $coverEditionKey, coverId: $coverId, firstPublishYear: $firstPublishYear)';
}


}

/// @nodoc
abstract mixin class $AuthorWorkCopyWith<$Res>  {
  factory $AuthorWorkCopyWith(AuthorWork value, $Res Function(AuthorWork) _then) = _$AuthorWorkCopyWithImpl;
@useResult
$Res call({
 String key, String title, String? coverEditionKey, int? coverId, int? firstPublishYear
});




}
/// @nodoc
class _$AuthorWorkCopyWithImpl<$Res>
    implements $AuthorWorkCopyWith<$Res> {
  _$AuthorWorkCopyWithImpl(this._self, this._then);

  final AuthorWork _self;
  final $Res Function(AuthorWork) _then;

/// Create a copy of AuthorWork
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,Object? title = null,Object? coverEditionKey = freezed,Object? coverId = freezed,Object? firstPublishYear = freezed,}) {
  return _then(_self.copyWith(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,coverEditionKey: freezed == coverEditionKey ? _self.coverEditionKey : coverEditionKey // ignore: cast_nullable_to_non_nullable
as String?,coverId: freezed == coverId ? _self.coverId : coverId // ignore: cast_nullable_to_non_nullable
as int?,firstPublishYear: freezed == firstPublishYear ? _self.firstPublishYear : firstPublishYear // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthorWork].
extension AuthorWorkPatterns on AuthorWork {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthorWork value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthorWork() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthorWork value)  $default,){
final _that = this;
switch (_that) {
case _AuthorWork():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthorWork value)?  $default,){
final _that = this;
switch (_that) {
case _AuthorWork() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String key,  String title,  String? coverEditionKey,  int? coverId,  int? firstPublishYear)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthorWork() when $default != null:
return $default(_that.key,_that.title,_that.coverEditionKey,_that.coverId,_that.firstPublishYear);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String key,  String title,  String? coverEditionKey,  int? coverId,  int? firstPublishYear)  $default,) {final _that = this;
switch (_that) {
case _AuthorWork():
return $default(_that.key,_that.title,_that.coverEditionKey,_that.coverId,_that.firstPublishYear);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String key,  String title,  String? coverEditionKey,  int? coverId,  int? firstPublishYear)?  $default,) {final _that = this;
switch (_that) {
case _AuthorWork() when $default != null:
return $default(_that.key,_that.title,_that.coverEditionKey,_that.coverId,_that.firstPublishYear);case _:
  return null;

}
}

}

/// @nodoc


class _AuthorWork implements AuthorWork {
  const _AuthorWork({required this.key, required this.title, this.coverEditionKey, this.coverId, this.firstPublishYear});
  

/// OpenLibrary work key (e.g. "OL45804W").
@override final  String key;
@override final  String title;
/// Cover edition key used to build cover image URLs.
@override final  String? coverEditionKey;
/// Cover ID used with the OpenLibrary covers API.
@override final  int? coverId;
/// First publish year if available.
@override final  int? firstPublishYear;

/// Create a copy of AuthorWork
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthorWorkCopyWith<_AuthorWork> get copyWith => __$AuthorWorkCopyWithImpl<_AuthorWork>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthorWork&&(identical(other.key, key) || other.key == key)&&(identical(other.title, title) || other.title == title)&&(identical(other.coverEditionKey, coverEditionKey) || other.coverEditionKey == coverEditionKey)&&(identical(other.coverId, coverId) || other.coverId == coverId)&&(identical(other.firstPublishYear, firstPublishYear) || other.firstPublishYear == firstPublishYear));
}


@override
int get hashCode => Object.hash(runtimeType,key,title,coverEditionKey,coverId,firstPublishYear);

@override
String toString() {
  return 'AuthorWork(key: $key, title: $title, coverEditionKey: $coverEditionKey, coverId: $coverId, firstPublishYear: $firstPublishYear)';
}


}

/// @nodoc
abstract mixin class _$AuthorWorkCopyWith<$Res> implements $AuthorWorkCopyWith<$Res> {
  factory _$AuthorWorkCopyWith(_AuthorWork value, $Res Function(_AuthorWork) _then) = __$AuthorWorkCopyWithImpl;
@override @useResult
$Res call({
 String key, String title, String? coverEditionKey, int? coverId, int? firstPublishYear
});




}
/// @nodoc
class __$AuthorWorkCopyWithImpl<$Res>
    implements _$AuthorWorkCopyWith<$Res> {
  __$AuthorWorkCopyWithImpl(this._self, this._then);

  final _AuthorWork _self;
  final $Res Function(_AuthorWork) _then;

/// Create a copy of AuthorWork
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,Object? title = null,Object? coverEditionKey = freezed,Object? coverId = freezed,Object? firstPublishYear = freezed,}) {
  return _then(_AuthorWork(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,coverEditionKey: freezed == coverEditionKey ? _self.coverEditionKey : coverEditionKey // ignore: cast_nullable_to_non_nullable
as String?,coverId: freezed == coverId ? _self.coverId : coverId // ignore: cast_nullable_to_non_nullable
as int?,firstPublishYear: freezed == firstPublishYear ? _self.firstPublishYear : firstPublishYear // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
