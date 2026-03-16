// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'author_search_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthorSearchPage {

 int get numFound; List<Author> get authors;
/// Create a copy of AuthorSearchPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthorSearchPageCopyWith<AuthorSearchPage> get copyWith => _$AuthorSearchPageCopyWithImpl<AuthorSearchPage>(this as AuthorSearchPage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthorSearchPage&&(identical(other.numFound, numFound) || other.numFound == numFound)&&const DeepCollectionEquality().equals(other.authors, authors));
}


@override
int get hashCode => Object.hash(runtimeType,numFound,const DeepCollectionEquality().hash(authors));

@override
String toString() {
  return 'AuthorSearchPage(numFound: $numFound, authors: $authors)';
}


}

/// @nodoc
abstract mixin class $AuthorSearchPageCopyWith<$Res>  {
  factory $AuthorSearchPageCopyWith(AuthorSearchPage value, $Res Function(AuthorSearchPage) _then) = _$AuthorSearchPageCopyWithImpl;
@useResult
$Res call({
 int numFound, List<Author> authors
});




}
/// @nodoc
class _$AuthorSearchPageCopyWithImpl<$Res>
    implements $AuthorSearchPageCopyWith<$Res> {
  _$AuthorSearchPageCopyWithImpl(this._self, this._then);

  final AuthorSearchPage _self;
  final $Res Function(AuthorSearchPage) _then;

/// Create a copy of AuthorSearchPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? numFound = null,Object? authors = null,}) {
  return _then(_self.copyWith(
numFound: null == numFound ? _self.numFound : numFound // ignore: cast_nullable_to_non_nullable
as int,authors: null == authors ? _self.authors : authors // ignore: cast_nullable_to_non_nullable
as List<Author>,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthorSearchPage].
extension AuthorSearchPagePatterns on AuthorSearchPage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthorSearchPage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthorSearchPage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthorSearchPage value)  $default,){
final _that = this;
switch (_that) {
case _AuthorSearchPage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthorSearchPage value)?  $default,){
final _that = this;
switch (_that) {
case _AuthorSearchPage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int numFound,  List<Author> authors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthorSearchPage() when $default != null:
return $default(_that.numFound,_that.authors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int numFound,  List<Author> authors)  $default,) {final _that = this;
switch (_that) {
case _AuthorSearchPage():
return $default(_that.numFound,_that.authors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int numFound,  List<Author> authors)?  $default,) {final _that = this;
switch (_that) {
case _AuthorSearchPage() when $default != null:
return $default(_that.numFound,_that.authors);case _:
  return null;

}
}

}

/// @nodoc


class _AuthorSearchPage implements AuthorSearchPage {
  const _AuthorSearchPage({required this.numFound, required final  List<Author> authors}): _authors = authors;
  

@override final  int numFound;
 final  List<Author> _authors;
@override List<Author> get authors {
  if (_authors is EqualUnmodifiableListView) return _authors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_authors);
}


/// Create a copy of AuthorSearchPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthorSearchPageCopyWith<_AuthorSearchPage> get copyWith => __$AuthorSearchPageCopyWithImpl<_AuthorSearchPage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthorSearchPage&&(identical(other.numFound, numFound) || other.numFound == numFound)&&const DeepCollectionEquality().equals(other._authors, _authors));
}


@override
int get hashCode => Object.hash(runtimeType,numFound,const DeepCollectionEquality().hash(_authors));

@override
String toString() {
  return 'AuthorSearchPage(numFound: $numFound, authors: $authors)';
}


}

/// @nodoc
abstract mixin class _$AuthorSearchPageCopyWith<$Res> implements $AuthorSearchPageCopyWith<$Res> {
  factory _$AuthorSearchPageCopyWith(_AuthorSearchPage value, $Res Function(_AuthorSearchPage) _then) = __$AuthorSearchPageCopyWithImpl;
@override @useResult
$Res call({
 int numFound, List<Author> authors
});




}
/// @nodoc
class __$AuthorSearchPageCopyWithImpl<$Res>
    implements _$AuthorSearchPageCopyWith<$Res> {
  __$AuthorSearchPageCopyWithImpl(this._self, this._then);

  final _AuthorSearchPage _self;
  final $Res Function(_AuthorSearchPage) _then;

/// Create a copy of AuthorSearchPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? numFound = null,Object? authors = null,}) {
  return _then(_AuthorSearchPage(
numFound: null == numFound ? _self.numFound : numFound // ignore: cast_nullable_to_non_nullable
as int,authors: null == authors ? _self._authors : authors // ignore: cast_nullable_to_non_nullable
as List<Author>,
  ));
}


}

// dart format on
