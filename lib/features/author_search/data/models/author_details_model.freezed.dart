// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'author_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthorLinkModel {

 String get title; String get url;
/// Create a copy of AuthorLinkModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthorLinkModelCopyWith<AuthorLinkModel> get copyWith => _$AuthorLinkModelCopyWithImpl<AuthorLinkModel>(this as AuthorLinkModel, _$identity);

  /// Serializes this AuthorLinkModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthorLinkModel&&(identical(other.title, title) || other.title == title)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,url);

@override
String toString() {
  return 'AuthorLinkModel(title: $title, url: $url)';
}


}

/// @nodoc
abstract mixin class $AuthorLinkModelCopyWith<$Res>  {
  factory $AuthorLinkModelCopyWith(AuthorLinkModel value, $Res Function(AuthorLinkModel) _then) = _$AuthorLinkModelCopyWithImpl;
@useResult
$Res call({
 String title, String url
});




}
/// @nodoc
class _$AuthorLinkModelCopyWithImpl<$Res>
    implements $AuthorLinkModelCopyWith<$Res> {
  _$AuthorLinkModelCopyWithImpl(this._self, this._then);

  final AuthorLinkModel _self;
  final $Res Function(AuthorLinkModel) _then;

/// Create a copy of AuthorLinkModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? url = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthorLinkModel].
extension AuthorLinkModelPatterns on AuthorLinkModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthorLinkModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthorLinkModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthorLinkModel value)  $default,){
final _that = this;
switch (_that) {
case _AuthorLinkModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthorLinkModel value)?  $default,){
final _that = this;
switch (_that) {
case _AuthorLinkModel() when $default != null:
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
case _AuthorLinkModel() when $default != null:
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
case _AuthorLinkModel():
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
case _AuthorLinkModel() when $default != null:
return $default(_that.title,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthorLinkModel extends AuthorLinkModel {
  const _AuthorLinkModel({required this.title, required this.url}): super._();
  factory _AuthorLinkModel.fromJson(Map<String, dynamic> json) => _$AuthorLinkModelFromJson(json);

@override final  String title;
@override final  String url;

/// Create a copy of AuthorLinkModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthorLinkModelCopyWith<_AuthorLinkModel> get copyWith => __$AuthorLinkModelCopyWithImpl<_AuthorLinkModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthorLinkModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthorLinkModel&&(identical(other.title, title) || other.title == title)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,url);

@override
String toString() {
  return 'AuthorLinkModel(title: $title, url: $url)';
}


}

/// @nodoc
abstract mixin class _$AuthorLinkModelCopyWith<$Res> implements $AuthorLinkModelCopyWith<$Res> {
  factory _$AuthorLinkModelCopyWith(_AuthorLinkModel value, $Res Function(_AuthorLinkModel) _then) = __$AuthorLinkModelCopyWithImpl;
@override @useResult
$Res call({
 String title, String url
});




}
/// @nodoc
class __$AuthorLinkModelCopyWithImpl<$Res>
    implements _$AuthorLinkModelCopyWith<$Res> {
  __$AuthorLinkModelCopyWithImpl(this._self, this._then);

  final _AuthorLinkModel _self;
  final $Res Function(_AuthorLinkModel) _then;

/// Create a copy of AuthorLinkModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? url = null,}) {
  return _then(_AuthorLinkModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AuthorDetailsModel {

 String get key; String get name;@JsonKey(name: 'personal_name') String? get personalName;@JsonKey(name: 'birth_date') String? get birthDate;@JsonKey(name: 'death_date') String? get deathDate;@_BioConverter() String? get bio; List<int> get photos; List<AuthorLinkModel> get links;
/// Create a copy of AuthorDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthorDetailsModelCopyWith<AuthorDetailsModel> get copyWith => _$AuthorDetailsModelCopyWithImpl<AuthorDetailsModel>(this as AuthorDetailsModel, _$identity);

  /// Serializes this AuthorDetailsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthorDetailsModel&&(identical(other.key, key) || other.key == key)&&(identical(other.name, name) || other.name == name)&&(identical(other.personalName, personalName) || other.personalName == personalName)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.deathDate, deathDate) || other.deathDate == deathDate)&&(identical(other.bio, bio) || other.bio == bio)&&const DeepCollectionEquality().equals(other.photos, photos)&&const DeepCollectionEquality().equals(other.links, links));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,name,personalName,birthDate,deathDate,bio,const DeepCollectionEquality().hash(photos),const DeepCollectionEquality().hash(links));

@override
String toString() {
  return 'AuthorDetailsModel(key: $key, name: $name, personalName: $personalName, birthDate: $birthDate, deathDate: $deathDate, bio: $bio, photos: $photos, links: $links)';
}


}

/// @nodoc
abstract mixin class $AuthorDetailsModelCopyWith<$Res>  {
  factory $AuthorDetailsModelCopyWith(AuthorDetailsModel value, $Res Function(AuthorDetailsModel) _then) = _$AuthorDetailsModelCopyWithImpl;
@useResult
$Res call({
 String key, String name,@JsonKey(name: 'personal_name') String? personalName,@JsonKey(name: 'birth_date') String? birthDate,@JsonKey(name: 'death_date') String? deathDate,@_BioConverter() String? bio, List<int> photos, List<AuthorLinkModel> links
});




}
/// @nodoc
class _$AuthorDetailsModelCopyWithImpl<$Res>
    implements $AuthorDetailsModelCopyWith<$Res> {
  _$AuthorDetailsModelCopyWithImpl(this._self, this._then);

  final AuthorDetailsModel _self;
  final $Res Function(AuthorDetailsModel) _then;

/// Create a copy of AuthorDetailsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,Object? name = null,Object? personalName = freezed,Object? birthDate = freezed,Object? deathDate = freezed,Object? bio = freezed,Object? photos = null,Object? links = null,}) {
  return _then(_self.copyWith(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,personalName: freezed == personalName ? _self.personalName : personalName // ignore: cast_nullable_to_non_nullable
as String?,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String?,deathDate: freezed == deathDate ? _self.deathDate : deathDate // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,photos: null == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<int>,links: null == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as List<AuthorLinkModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthorDetailsModel].
extension AuthorDetailsModelPatterns on AuthorDetailsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthorDetailsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthorDetailsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthorDetailsModel value)  $default,){
final _that = this;
switch (_that) {
case _AuthorDetailsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthorDetailsModel value)?  $default,){
final _that = this;
switch (_that) {
case _AuthorDetailsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String key,  String name, @JsonKey(name: 'personal_name')  String? personalName, @JsonKey(name: 'birth_date')  String? birthDate, @JsonKey(name: 'death_date')  String? deathDate, @_BioConverter()  String? bio,  List<int> photos,  List<AuthorLinkModel> links)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthorDetailsModel() when $default != null:
return $default(_that.key,_that.name,_that.personalName,_that.birthDate,_that.deathDate,_that.bio,_that.photos,_that.links);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String key,  String name, @JsonKey(name: 'personal_name')  String? personalName, @JsonKey(name: 'birth_date')  String? birthDate, @JsonKey(name: 'death_date')  String? deathDate, @_BioConverter()  String? bio,  List<int> photos,  List<AuthorLinkModel> links)  $default,) {final _that = this;
switch (_that) {
case _AuthorDetailsModel():
return $default(_that.key,_that.name,_that.personalName,_that.birthDate,_that.deathDate,_that.bio,_that.photos,_that.links);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String key,  String name, @JsonKey(name: 'personal_name')  String? personalName, @JsonKey(name: 'birth_date')  String? birthDate, @JsonKey(name: 'death_date')  String? deathDate, @_BioConverter()  String? bio,  List<int> photos,  List<AuthorLinkModel> links)?  $default,) {final _that = this;
switch (_that) {
case _AuthorDetailsModel() when $default != null:
return $default(_that.key,_that.name,_that.personalName,_that.birthDate,_that.deathDate,_that.bio,_that.photos,_that.links);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthorDetailsModel extends AuthorDetailsModel {
  const _AuthorDetailsModel({required this.key, required this.name, @JsonKey(name: 'personal_name') this.personalName, @JsonKey(name: 'birth_date') this.birthDate, @JsonKey(name: 'death_date') this.deathDate, @_BioConverter() this.bio, final  List<int> photos = const [], final  List<AuthorLinkModel> links = const []}): _photos = photos,_links = links,super._();
  factory _AuthorDetailsModel.fromJson(Map<String, dynamic> json) => _$AuthorDetailsModelFromJson(json);

@override final  String key;
@override final  String name;
@override@JsonKey(name: 'personal_name') final  String? personalName;
@override@JsonKey(name: 'birth_date') final  String? birthDate;
@override@JsonKey(name: 'death_date') final  String? deathDate;
@override@_BioConverter() final  String? bio;
 final  List<int> _photos;
@override@JsonKey() List<int> get photos {
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photos);
}

 final  List<AuthorLinkModel> _links;
@override@JsonKey() List<AuthorLinkModel> get links {
  if (_links is EqualUnmodifiableListView) return _links;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_links);
}


/// Create a copy of AuthorDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthorDetailsModelCopyWith<_AuthorDetailsModel> get copyWith => __$AuthorDetailsModelCopyWithImpl<_AuthorDetailsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthorDetailsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthorDetailsModel&&(identical(other.key, key) || other.key == key)&&(identical(other.name, name) || other.name == name)&&(identical(other.personalName, personalName) || other.personalName == personalName)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.deathDate, deathDate) || other.deathDate == deathDate)&&(identical(other.bio, bio) || other.bio == bio)&&const DeepCollectionEquality().equals(other._photos, _photos)&&const DeepCollectionEquality().equals(other._links, _links));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,name,personalName,birthDate,deathDate,bio,const DeepCollectionEquality().hash(_photos),const DeepCollectionEquality().hash(_links));

@override
String toString() {
  return 'AuthorDetailsModel(key: $key, name: $name, personalName: $personalName, birthDate: $birthDate, deathDate: $deathDate, bio: $bio, photos: $photos, links: $links)';
}


}

/// @nodoc
abstract mixin class _$AuthorDetailsModelCopyWith<$Res> implements $AuthorDetailsModelCopyWith<$Res> {
  factory _$AuthorDetailsModelCopyWith(_AuthorDetailsModel value, $Res Function(_AuthorDetailsModel) _then) = __$AuthorDetailsModelCopyWithImpl;
@override @useResult
$Res call({
 String key, String name,@JsonKey(name: 'personal_name') String? personalName,@JsonKey(name: 'birth_date') String? birthDate,@JsonKey(name: 'death_date') String? deathDate,@_BioConverter() String? bio, List<int> photos, List<AuthorLinkModel> links
});




}
/// @nodoc
class __$AuthorDetailsModelCopyWithImpl<$Res>
    implements _$AuthorDetailsModelCopyWith<$Res> {
  __$AuthorDetailsModelCopyWithImpl(this._self, this._then);

  final _AuthorDetailsModel _self;
  final $Res Function(_AuthorDetailsModel) _then;

/// Create a copy of AuthorDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,Object? name = null,Object? personalName = freezed,Object? birthDate = freezed,Object? deathDate = freezed,Object? bio = freezed,Object? photos = null,Object? links = null,}) {
  return _then(_AuthorDetailsModel(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,personalName: freezed == personalName ? _self.personalName : personalName // ignore: cast_nullable_to_non_nullable
as String?,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String?,deathDate: freezed == deathDate ? _self.deathDate : deathDate // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,photos: null == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<int>,links: null == links ? _self._links : links // ignore: cast_nullable_to_non_nullable
as List<AuthorLinkModel>,
  ));
}


}

// dart format on
