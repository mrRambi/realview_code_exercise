// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'author_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthorSearchState {

 List<Author> get authors; int get numFound; int get currentOffset; bool get isLoadingMore; bool get hasReachedEnd;
/// Create a copy of AuthorSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthorSearchStateCopyWith<AuthorSearchState> get copyWith => _$AuthorSearchStateCopyWithImpl<AuthorSearchState>(this as AuthorSearchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthorSearchState&&const DeepCollectionEquality().equals(other.authors, authors)&&(identical(other.numFound, numFound) || other.numFound == numFound)&&(identical(other.currentOffset, currentOffset) || other.currentOffset == currentOffset)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.hasReachedEnd, hasReachedEnd) || other.hasReachedEnd == hasReachedEnd));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(authors),numFound,currentOffset,isLoadingMore,hasReachedEnd);

@override
String toString() {
  return 'AuthorSearchState(authors: $authors, numFound: $numFound, currentOffset: $currentOffset, isLoadingMore: $isLoadingMore, hasReachedEnd: $hasReachedEnd)';
}


}

/// @nodoc
abstract mixin class $AuthorSearchStateCopyWith<$Res>  {
  factory $AuthorSearchStateCopyWith(AuthorSearchState value, $Res Function(AuthorSearchState) _then) = _$AuthorSearchStateCopyWithImpl;
@useResult
$Res call({
 List<Author> authors, int numFound, int currentOffset, bool isLoadingMore, bool hasReachedEnd
});




}
/// @nodoc
class _$AuthorSearchStateCopyWithImpl<$Res>
    implements $AuthorSearchStateCopyWith<$Res> {
  _$AuthorSearchStateCopyWithImpl(this._self, this._then);

  final AuthorSearchState _self;
  final $Res Function(AuthorSearchState) _then;

/// Create a copy of AuthorSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? authors = null,Object? numFound = null,Object? currentOffset = null,Object? isLoadingMore = null,Object? hasReachedEnd = null,}) {
  return _then(_self.copyWith(
authors: null == authors ? _self.authors : authors // ignore: cast_nullable_to_non_nullable
as List<Author>,numFound: null == numFound ? _self.numFound : numFound // ignore: cast_nullable_to_non_nullable
as int,currentOffset: null == currentOffset ? _self.currentOffset : currentOffset // ignore: cast_nullable_to_non_nullable
as int,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,hasReachedEnd: null == hasReachedEnd ? _self.hasReachedEnd : hasReachedEnd // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthorSearchState].
extension AuthorSearchStatePatterns on AuthorSearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthorSearchState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthorSearchState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthorSearchState value)  $default,){
final _that = this;
switch (_that) {
case _AuthorSearchState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthorSearchState value)?  $default,){
final _that = this;
switch (_that) {
case _AuthorSearchState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Author> authors,  int numFound,  int currentOffset,  bool isLoadingMore,  bool hasReachedEnd)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthorSearchState() when $default != null:
return $default(_that.authors,_that.numFound,_that.currentOffset,_that.isLoadingMore,_that.hasReachedEnd);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Author> authors,  int numFound,  int currentOffset,  bool isLoadingMore,  bool hasReachedEnd)  $default,) {final _that = this;
switch (_that) {
case _AuthorSearchState():
return $default(_that.authors,_that.numFound,_that.currentOffset,_that.isLoadingMore,_that.hasReachedEnd);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Author> authors,  int numFound,  int currentOffset,  bool isLoadingMore,  bool hasReachedEnd)?  $default,) {final _that = this;
switch (_that) {
case _AuthorSearchState() when $default != null:
return $default(_that.authors,_that.numFound,_that.currentOffset,_that.isLoadingMore,_that.hasReachedEnd);case _:
  return null;

}
}

}

/// @nodoc


class _AuthorSearchState implements AuthorSearchState {
  const _AuthorSearchState({final  List<Author> authors = const [], this.numFound = 0, this.currentOffset = 0, this.isLoadingMore = false, this.hasReachedEnd = false}): _authors = authors;
  

 final  List<Author> _authors;
@override@JsonKey() List<Author> get authors {
  if (_authors is EqualUnmodifiableListView) return _authors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_authors);
}

@override@JsonKey() final  int numFound;
@override@JsonKey() final  int currentOffset;
@override@JsonKey() final  bool isLoadingMore;
@override@JsonKey() final  bool hasReachedEnd;

/// Create a copy of AuthorSearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthorSearchStateCopyWith<_AuthorSearchState> get copyWith => __$AuthorSearchStateCopyWithImpl<_AuthorSearchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthorSearchState&&const DeepCollectionEquality().equals(other._authors, _authors)&&(identical(other.numFound, numFound) || other.numFound == numFound)&&(identical(other.currentOffset, currentOffset) || other.currentOffset == currentOffset)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.hasReachedEnd, hasReachedEnd) || other.hasReachedEnd == hasReachedEnd));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_authors),numFound,currentOffset,isLoadingMore,hasReachedEnd);

@override
String toString() {
  return 'AuthorSearchState(authors: $authors, numFound: $numFound, currentOffset: $currentOffset, isLoadingMore: $isLoadingMore, hasReachedEnd: $hasReachedEnd)';
}


}

/// @nodoc
abstract mixin class _$AuthorSearchStateCopyWith<$Res> implements $AuthorSearchStateCopyWith<$Res> {
  factory _$AuthorSearchStateCopyWith(_AuthorSearchState value, $Res Function(_AuthorSearchState) _then) = __$AuthorSearchStateCopyWithImpl;
@override @useResult
$Res call({
 List<Author> authors, int numFound, int currentOffset, bool isLoadingMore, bool hasReachedEnd
});




}
/// @nodoc
class __$AuthorSearchStateCopyWithImpl<$Res>
    implements _$AuthorSearchStateCopyWith<$Res> {
  __$AuthorSearchStateCopyWithImpl(this._self, this._then);

  final _AuthorSearchState _self;
  final $Res Function(_AuthorSearchState) _then;

/// Create a copy of AuthorSearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? authors = null,Object? numFound = null,Object? currentOffset = null,Object? isLoadingMore = null,Object? hasReachedEnd = null,}) {
  return _then(_AuthorSearchState(
authors: null == authors ? _self._authors : authors // ignore: cast_nullable_to_non_nullable
as List<Author>,numFound: null == numFound ? _self.numFound : numFound // ignore: cast_nullable_to_non_nullable
as int,currentOffset: null == currentOffset ? _self.currentOffset : currentOffset // ignore: cast_nullable_to_non_nullable
as int,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,hasReachedEnd: null == hasReachedEnd ? _self.hasReachedEnd : hasReachedEnd // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
