// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'author_works_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthorWorkModel {

 String get key; String get title;@JsonKey(name: 'cover_edition_key') String? get coverEditionKey;@JsonKey(name: 'cover_id') int? get coverId;@JsonKey(name: 'first_publish_year') int? get firstPublishYear;
/// Create a copy of AuthorWorkModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthorWorkModelCopyWith<AuthorWorkModel> get copyWith => _$AuthorWorkModelCopyWithImpl<AuthorWorkModel>(this as AuthorWorkModel, _$identity);

  /// Serializes this AuthorWorkModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthorWorkModel&&(identical(other.key, key) || other.key == key)&&(identical(other.title, title) || other.title == title)&&(identical(other.coverEditionKey, coverEditionKey) || other.coverEditionKey == coverEditionKey)&&(identical(other.coverId, coverId) || other.coverId == coverId)&&(identical(other.firstPublishYear, firstPublishYear) || other.firstPublishYear == firstPublishYear));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,title,coverEditionKey,coverId,firstPublishYear);

@override
String toString() {
  return 'AuthorWorkModel(key: $key, title: $title, coverEditionKey: $coverEditionKey, coverId: $coverId, firstPublishYear: $firstPublishYear)';
}


}

/// @nodoc
abstract mixin class $AuthorWorkModelCopyWith<$Res>  {
  factory $AuthorWorkModelCopyWith(AuthorWorkModel value, $Res Function(AuthorWorkModel) _then) = _$AuthorWorkModelCopyWithImpl;
@useResult
$Res call({
 String key, String title,@JsonKey(name: 'cover_edition_key') String? coverEditionKey,@JsonKey(name: 'cover_id') int? coverId,@JsonKey(name: 'first_publish_year') int? firstPublishYear
});




}
/// @nodoc
class _$AuthorWorkModelCopyWithImpl<$Res>
    implements $AuthorWorkModelCopyWith<$Res> {
  _$AuthorWorkModelCopyWithImpl(this._self, this._then);

  final AuthorWorkModel _self;
  final $Res Function(AuthorWorkModel) _then;

/// Create a copy of AuthorWorkModel
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


/// Adds pattern-matching-related methods to [AuthorWorkModel].
extension AuthorWorkModelPatterns on AuthorWorkModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthorWorkModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthorWorkModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthorWorkModel value)  $default,){
final _that = this;
switch (_that) {
case _AuthorWorkModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthorWorkModel value)?  $default,){
final _that = this;
switch (_that) {
case _AuthorWorkModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String key,  String title, @JsonKey(name: 'cover_edition_key')  String? coverEditionKey, @JsonKey(name: 'cover_id')  int? coverId, @JsonKey(name: 'first_publish_year')  int? firstPublishYear)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthorWorkModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String key,  String title, @JsonKey(name: 'cover_edition_key')  String? coverEditionKey, @JsonKey(name: 'cover_id')  int? coverId, @JsonKey(name: 'first_publish_year')  int? firstPublishYear)  $default,) {final _that = this;
switch (_that) {
case _AuthorWorkModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String key,  String title, @JsonKey(name: 'cover_edition_key')  String? coverEditionKey, @JsonKey(name: 'cover_id')  int? coverId, @JsonKey(name: 'first_publish_year')  int? firstPublishYear)?  $default,) {final _that = this;
switch (_that) {
case _AuthorWorkModel() when $default != null:
return $default(_that.key,_that.title,_that.coverEditionKey,_that.coverId,_that.firstPublishYear);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthorWorkModel extends AuthorWorkModel {
  const _AuthorWorkModel({required this.key, required this.title, @JsonKey(name: 'cover_edition_key') this.coverEditionKey, @JsonKey(name: 'cover_id') this.coverId, @JsonKey(name: 'first_publish_year') this.firstPublishYear}): super._();
  factory _AuthorWorkModel.fromJson(Map<String, dynamic> json) => _$AuthorWorkModelFromJson(json);

@override final  String key;
@override final  String title;
@override@JsonKey(name: 'cover_edition_key') final  String? coverEditionKey;
@override@JsonKey(name: 'cover_id') final  int? coverId;
@override@JsonKey(name: 'first_publish_year') final  int? firstPublishYear;

/// Create a copy of AuthorWorkModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthorWorkModelCopyWith<_AuthorWorkModel> get copyWith => __$AuthorWorkModelCopyWithImpl<_AuthorWorkModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthorWorkModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthorWorkModel&&(identical(other.key, key) || other.key == key)&&(identical(other.title, title) || other.title == title)&&(identical(other.coverEditionKey, coverEditionKey) || other.coverEditionKey == coverEditionKey)&&(identical(other.coverId, coverId) || other.coverId == coverId)&&(identical(other.firstPublishYear, firstPublishYear) || other.firstPublishYear == firstPublishYear));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,title,coverEditionKey,coverId,firstPublishYear);

@override
String toString() {
  return 'AuthorWorkModel(key: $key, title: $title, coverEditionKey: $coverEditionKey, coverId: $coverId, firstPublishYear: $firstPublishYear)';
}


}

/// @nodoc
abstract mixin class _$AuthorWorkModelCopyWith<$Res> implements $AuthorWorkModelCopyWith<$Res> {
  factory _$AuthorWorkModelCopyWith(_AuthorWorkModel value, $Res Function(_AuthorWorkModel) _then) = __$AuthorWorkModelCopyWithImpl;
@override @useResult
$Res call({
 String key, String title,@JsonKey(name: 'cover_edition_key') String? coverEditionKey,@JsonKey(name: 'cover_id') int? coverId,@JsonKey(name: 'first_publish_year') int? firstPublishYear
});




}
/// @nodoc
class __$AuthorWorkModelCopyWithImpl<$Res>
    implements _$AuthorWorkModelCopyWith<$Res> {
  __$AuthorWorkModelCopyWithImpl(this._self, this._then);

  final _AuthorWorkModel _self;
  final $Res Function(_AuthorWorkModel) _then;

/// Create a copy of AuthorWorkModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,Object? title = null,Object? coverEditionKey = freezed,Object? coverId = freezed,Object? firstPublishYear = freezed,}) {
  return _then(_AuthorWorkModel(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,coverEditionKey: freezed == coverEditionKey ? _self.coverEditionKey : coverEditionKey // ignore: cast_nullable_to_non_nullable
as String?,coverId: freezed == coverId ? _self.coverId : coverId // ignore: cast_nullable_to_non_nullable
as int?,firstPublishYear: freezed == firstPublishYear ? _self.firstPublishYear : firstPublishYear // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$AuthorWorksResponseModel {

 List<AuthorWorkModel> get entries;
/// Create a copy of AuthorWorksResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthorWorksResponseModelCopyWith<AuthorWorksResponseModel> get copyWith => _$AuthorWorksResponseModelCopyWithImpl<AuthorWorksResponseModel>(this as AuthorWorksResponseModel, _$identity);

  /// Serializes this AuthorWorksResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthorWorksResponseModel&&const DeepCollectionEquality().equals(other.entries, entries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(entries));

@override
String toString() {
  return 'AuthorWorksResponseModel(entries: $entries)';
}


}

/// @nodoc
abstract mixin class $AuthorWorksResponseModelCopyWith<$Res>  {
  factory $AuthorWorksResponseModelCopyWith(AuthorWorksResponseModel value, $Res Function(AuthorWorksResponseModel) _then) = _$AuthorWorksResponseModelCopyWithImpl;
@useResult
$Res call({
 List<AuthorWorkModel> entries
});




}
/// @nodoc
class _$AuthorWorksResponseModelCopyWithImpl<$Res>
    implements $AuthorWorksResponseModelCopyWith<$Res> {
  _$AuthorWorksResponseModelCopyWithImpl(this._self, this._then);

  final AuthorWorksResponseModel _self;
  final $Res Function(AuthorWorksResponseModel) _then;

/// Create a copy of AuthorWorksResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? entries = null,}) {
  return _then(_self.copyWith(
entries: null == entries ? _self.entries : entries // ignore: cast_nullable_to_non_nullable
as List<AuthorWorkModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthorWorksResponseModel].
extension AuthorWorksResponseModelPatterns on AuthorWorksResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthorWorksResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthorWorksResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthorWorksResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _AuthorWorksResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthorWorksResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _AuthorWorksResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AuthorWorkModel> entries)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthorWorksResponseModel() when $default != null:
return $default(_that.entries);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AuthorWorkModel> entries)  $default,) {final _that = this;
switch (_that) {
case _AuthorWorksResponseModel():
return $default(_that.entries);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AuthorWorkModel> entries)?  $default,) {final _that = this;
switch (_that) {
case _AuthorWorksResponseModel() when $default != null:
return $default(_that.entries);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthorWorksResponseModel extends AuthorWorksResponseModel {
  const _AuthorWorksResponseModel({final  List<AuthorWorkModel> entries = const []}): _entries = entries,super._();
  factory _AuthorWorksResponseModel.fromJson(Map<String, dynamic> json) => _$AuthorWorksResponseModelFromJson(json);

 final  List<AuthorWorkModel> _entries;
@override@JsonKey() List<AuthorWorkModel> get entries {
  if (_entries is EqualUnmodifiableListView) return _entries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_entries);
}


/// Create a copy of AuthorWorksResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthorWorksResponseModelCopyWith<_AuthorWorksResponseModel> get copyWith => __$AuthorWorksResponseModelCopyWithImpl<_AuthorWorksResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthorWorksResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthorWorksResponseModel&&const DeepCollectionEquality().equals(other._entries, _entries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_entries));

@override
String toString() {
  return 'AuthorWorksResponseModel(entries: $entries)';
}


}

/// @nodoc
abstract mixin class _$AuthorWorksResponseModelCopyWith<$Res> implements $AuthorWorksResponseModelCopyWith<$Res> {
  factory _$AuthorWorksResponseModelCopyWith(_AuthorWorksResponseModel value, $Res Function(_AuthorWorksResponseModel) _then) = __$AuthorWorksResponseModelCopyWithImpl;
@override @useResult
$Res call({
 List<AuthorWorkModel> entries
});




}
/// @nodoc
class __$AuthorWorksResponseModelCopyWithImpl<$Res>
    implements _$AuthorWorksResponseModelCopyWith<$Res> {
  __$AuthorWorksResponseModelCopyWithImpl(this._self, this._then);

  final _AuthorWorksResponseModel _self;
  final $Res Function(_AuthorWorksResponseModel) _then;

/// Create a copy of AuthorWorksResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? entries = null,}) {
  return _then(_AuthorWorksResponseModel(
entries: null == entries ? _self._entries : entries // ignore: cast_nullable_to_non_nullable
as List<AuthorWorkModel>,
  ));
}


}

// dart format on
