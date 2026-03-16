// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'author_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthorLink {

 String get title; String get url;
/// Create a copy of AuthorLink
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthorLinkCopyWith<AuthorLink> get copyWith => _$AuthorLinkCopyWithImpl<AuthorLink>(this as AuthorLink, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthorLink&&(identical(other.title, title) || other.title == title)&&(identical(other.url, url) || other.url == url));
}


@override
int get hashCode => Object.hash(runtimeType,title,url);

@override
String toString() {
  return 'AuthorLink(title: $title, url: $url)';
}


}

/// @nodoc
abstract mixin class $AuthorLinkCopyWith<$Res>  {
  factory $AuthorLinkCopyWith(AuthorLink value, $Res Function(AuthorLink) _then) = _$AuthorLinkCopyWithImpl;
@useResult
$Res call({
 String title, String url
});




}
/// @nodoc
class _$AuthorLinkCopyWithImpl<$Res>
    implements $AuthorLinkCopyWith<$Res> {
  _$AuthorLinkCopyWithImpl(this._self, this._then);

  final AuthorLink _self;
  final $Res Function(AuthorLink) _then;

/// Create a copy of AuthorLink
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? url = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthorLink].
extension AuthorLinkPatterns on AuthorLink {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthorLink value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthorLink() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthorLink value)  $default,){
final _that = this;
switch (_that) {
case _AuthorLink():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthorLink value)?  $default,){
final _that = this;
switch (_that) {
case _AuthorLink() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthorLink() when $default != null:
return $default(_that.title,_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String url)  $default,) {final _that = this;
switch (_that) {
case _AuthorLink():
return $default(_that.title,_that.url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String url)?  $default,) {final _that = this;
switch (_that) {
case _AuthorLink() when $default != null:
return $default(_that.title,_that.url);case _:
  return null;

}
}

}

/// @nodoc


class _AuthorLink implements AuthorLink {
  const _AuthorLink({required this.title, required this.url});
  

@override final  String title;
@override final  String url;

/// Create a copy of AuthorLink
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthorLinkCopyWith<_AuthorLink> get copyWith => __$AuthorLinkCopyWithImpl<_AuthorLink>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthorLink&&(identical(other.title, title) || other.title == title)&&(identical(other.url, url) || other.url == url));
}


@override
int get hashCode => Object.hash(runtimeType,title,url);

@override
String toString() {
  return 'AuthorLink(title: $title, url: $url)';
}


}

/// @nodoc
abstract mixin class _$AuthorLinkCopyWith<$Res> implements $AuthorLinkCopyWith<$Res> {
  factory _$AuthorLinkCopyWith(_AuthorLink value, $Res Function(_AuthorLink) _then) = __$AuthorLinkCopyWithImpl;
@override @useResult
$Res call({
 String title, String url
});




}
/// @nodoc
class __$AuthorLinkCopyWithImpl<$Res>
    implements _$AuthorLinkCopyWith<$Res> {
  __$AuthorLinkCopyWithImpl(this._self, this._then);

  final _AuthorLink _self;
  final $Res Function(_AuthorLink) _then;

/// Create a copy of AuthorLink
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? url = null,}) {
  return _then(_AuthorLink(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$AuthorDetails {

 String get key; String get name; String? get personalName; String? get birthDate; String? get deathDate; String? get bio;/// Photo IDs used to build cover URLs via the OpenLibrary covers API.
 List<int> get photoIds;/// External links provided by OpenLibrary (e.g. official site, Wikipedia).
 List<AuthorLink> get links;
/// Create a copy of AuthorDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthorDetailsCopyWith<AuthorDetails> get copyWith => _$AuthorDetailsCopyWithImpl<AuthorDetails>(this as AuthorDetails, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthorDetails&&(identical(other.key, key) || other.key == key)&&(identical(other.name, name) || other.name == name)&&(identical(other.personalName, personalName) || other.personalName == personalName)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.deathDate, deathDate) || other.deathDate == deathDate)&&(identical(other.bio, bio) || other.bio == bio)&&const DeepCollectionEquality().equals(other.photoIds, photoIds)&&const DeepCollectionEquality().equals(other.links, links));
}


@override
int get hashCode => Object.hash(runtimeType,key,name,personalName,birthDate,deathDate,bio,const DeepCollectionEquality().hash(photoIds),const DeepCollectionEquality().hash(links));

@override
String toString() {
  return 'AuthorDetails(key: $key, name: $name, personalName: $personalName, birthDate: $birthDate, deathDate: $deathDate, bio: $bio, photoIds: $photoIds, links: $links)';
}


}

/// @nodoc
abstract mixin class $AuthorDetailsCopyWith<$Res>  {
  factory $AuthorDetailsCopyWith(AuthorDetails value, $Res Function(AuthorDetails) _then) = _$AuthorDetailsCopyWithImpl;
@useResult
$Res call({
 String key, String name, String? personalName, String? birthDate, String? deathDate, String? bio, List<int> photoIds, List<AuthorLink> links
});




}
/// @nodoc
class _$AuthorDetailsCopyWithImpl<$Res>
    implements $AuthorDetailsCopyWith<$Res> {
  _$AuthorDetailsCopyWithImpl(this._self, this._then);

  final AuthorDetails _self;
  final $Res Function(AuthorDetails) _then;

/// Create a copy of AuthorDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,Object? name = null,Object? personalName = freezed,Object? birthDate = freezed,Object? deathDate = freezed,Object? bio = freezed,Object? photoIds = null,Object? links = null,}) {
  return _then(_self.copyWith(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,personalName: freezed == personalName ? _self.personalName : personalName // ignore: cast_nullable_to_non_nullable
as String?,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String?,deathDate: freezed == deathDate ? _self.deathDate : deathDate // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,photoIds: null == photoIds ? _self.photoIds : photoIds // ignore: cast_nullable_to_non_nullable
as List<int>,links: null == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as List<AuthorLink>,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthorDetails].
extension AuthorDetailsPatterns on AuthorDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthorDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthorDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthorDetails value)  $default,){
final _that = this;
switch (_that) {
case _AuthorDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthorDetails value)?  $default,){
final _that = this;
switch (_that) {
case _AuthorDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String key,  String name,  String? personalName,  String? birthDate,  String? deathDate,  String? bio,  List<int> photoIds,  List<AuthorLink> links)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthorDetails() when $default != null:
return $default(_that.key,_that.name,_that.personalName,_that.birthDate,_that.deathDate,_that.bio,_that.photoIds,_that.links);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String key,  String name,  String? personalName,  String? birthDate,  String? deathDate,  String? bio,  List<int> photoIds,  List<AuthorLink> links)  $default,) {final _that = this;
switch (_that) {
case _AuthorDetails():
return $default(_that.key,_that.name,_that.personalName,_that.birthDate,_that.deathDate,_that.bio,_that.photoIds,_that.links);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String key,  String name,  String? personalName,  String? birthDate,  String? deathDate,  String? bio,  List<int> photoIds,  List<AuthorLink> links)?  $default,) {final _that = this;
switch (_that) {
case _AuthorDetails() when $default != null:
return $default(_that.key,_that.name,_that.personalName,_that.birthDate,_that.deathDate,_that.bio,_that.photoIds,_that.links);case _:
  return null;

}
}

}

/// @nodoc


class _AuthorDetails implements AuthorDetails {
  const _AuthorDetails({required this.key, required this.name, this.personalName, this.birthDate, this.deathDate, this.bio, final  List<int> photoIds = const [], final  List<AuthorLink> links = const []}): _photoIds = photoIds,_links = links;
  

@override final  String key;
@override final  String name;
@override final  String? personalName;
@override final  String? birthDate;
@override final  String? deathDate;
@override final  String? bio;
/// Photo IDs used to build cover URLs via the OpenLibrary covers API.
 final  List<int> _photoIds;
/// Photo IDs used to build cover URLs via the OpenLibrary covers API.
@override@JsonKey() List<int> get photoIds {
  if (_photoIds is EqualUnmodifiableListView) return _photoIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photoIds);
}

/// External links provided by OpenLibrary (e.g. official site, Wikipedia).
 final  List<AuthorLink> _links;
/// External links provided by OpenLibrary (e.g. official site, Wikipedia).
@override@JsonKey() List<AuthorLink> get links {
  if (_links is EqualUnmodifiableListView) return _links;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_links);
}


/// Create a copy of AuthorDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthorDetailsCopyWith<_AuthorDetails> get copyWith => __$AuthorDetailsCopyWithImpl<_AuthorDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthorDetails&&(identical(other.key, key) || other.key == key)&&(identical(other.name, name) || other.name == name)&&(identical(other.personalName, personalName) || other.personalName == personalName)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.deathDate, deathDate) || other.deathDate == deathDate)&&(identical(other.bio, bio) || other.bio == bio)&&const DeepCollectionEquality().equals(other._photoIds, _photoIds)&&const DeepCollectionEquality().equals(other._links, _links));
}


@override
int get hashCode => Object.hash(runtimeType,key,name,personalName,birthDate,deathDate,bio,const DeepCollectionEquality().hash(_photoIds),const DeepCollectionEquality().hash(_links));

@override
String toString() {
  return 'AuthorDetails(key: $key, name: $name, personalName: $personalName, birthDate: $birthDate, deathDate: $deathDate, bio: $bio, photoIds: $photoIds, links: $links)';
}


}

/// @nodoc
abstract mixin class _$AuthorDetailsCopyWith<$Res> implements $AuthorDetailsCopyWith<$Res> {
  factory _$AuthorDetailsCopyWith(_AuthorDetails value, $Res Function(_AuthorDetails) _then) = __$AuthorDetailsCopyWithImpl;
@override @useResult
$Res call({
 String key, String name, String? personalName, String? birthDate, String? deathDate, String? bio, List<int> photoIds, List<AuthorLink> links
});




}
/// @nodoc
class __$AuthorDetailsCopyWithImpl<$Res>
    implements _$AuthorDetailsCopyWith<$Res> {
  __$AuthorDetailsCopyWithImpl(this._self, this._then);

  final _AuthorDetails _self;
  final $Res Function(_AuthorDetails) _then;

/// Create a copy of AuthorDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,Object? name = null,Object? personalName = freezed,Object? birthDate = freezed,Object? deathDate = freezed,Object? bio = freezed,Object? photoIds = null,Object? links = null,}) {
  return _then(_AuthorDetails(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,personalName: freezed == personalName ? _self.personalName : personalName // ignore: cast_nullable_to_non_nullable
as String?,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String?,deathDate: freezed == deathDate ? _self.deathDate : deathDate // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,photoIds: null == photoIds ? _self._photoIds : photoIds // ignore: cast_nullable_to_non_nullable
as List<int>,links: null == links ? _self._links : links // ignore: cast_nullable_to_non_nullable
as List<AuthorLink>,
  ));
}


}

// dart format on
