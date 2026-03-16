// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'author_search_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthorSearchResponseModel {

@JsonKey(name: 'numFound') int get numFound;@JsonKey(name: 'docs') List<AuthorModel> get docs;
/// Create a copy of AuthorSearchResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthorSearchResponseModelCopyWith<AuthorSearchResponseModel> get copyWith => _$AuthorSearchResponseModelCopyWithImpl<AuthorSearchResponseModel>(this as AuthorSearchResponseModel, _$identity);

  /// Serializes this AuthorSearchResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthorSearchResponseModel&&(identical(other.numFound, numFound) || other.numFound == numFound)&&const DeepCollectionEquality().equals(other.docs, docs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,numFound,const DeepCollectionEquality().hash(docs));

@override
String toString() {
  return 'AuthorSearchResponseModel(numFound: $numFound, docs: $docs)';
}


}

/// @nodoc
abstract mixin class $AuthorSearchResponseModelCopyWith<$Res>  {
  factory $AuthorSearchResponseModelCopyWith(AuthorSearchResponseModel value, $Res Function(AuthorSearchResponseModel) _then) = _$AuthorSearchResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'numFound') int numFound,@JsonKey(name: 'docs') List<AuthorModel> docs
});




}
/// @nodoc
class _$AuthorSearchResponseModelCopyWithImpl<$Res>
    implements $AuthorSearchResponseModelCopyWith<$Res> {
  _$AuthorSearchResponseModelCopyWithImpl(this._self, this._then);

  final AuthorSearchResponseModel _self;
  final $Res Function(AuthorSearchResponseModel) _then;

/// Create a copy of AuthorSearchResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? numFound = null,Object? docs = null,}) {
  return _then(_self.copyWith(
numFound: null == numFound ? _self.numFound : numFound // ignore: cast_nullable_to_non_nullable
as int,docs: null == docs ? _self.docs : docs // ignore: cast_nullable_to_non_nullable
as List<AuthorModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthorSearchResponseModel].
extension AuthorSearchResponseModelPatterns on AuthorSearchResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthorSearchResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthorSearchResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthorSearchResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _AuthorSearchResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthorSearchResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _AuthorSearchResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'numFound')  int numFound, @JsonKey(name: 'docs')  List<AuthorModel> docs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthorSearchResponseModel() when $default != null:
return $default(_that.numFound,_that.docs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'numFound')  int numFound, @JsonKey(name: 'docs')  List<AuthorModel> docs)  $default,) {final _that = this;
switch (_that) {
case _AuthorSearchResponseModel():
return $default(_that.numFound,_that.docs);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'numFound')  int numFound, @JsonKey(name: 'docs')  List<AuthorModel> docs)?  $default,) {final _that = this;
switch (_that) {
case _AuthorSearchResponseModel() when $default != null:
return $default(_that.numFound,_that.docs);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthorSearchResponseModel implements AuthorSearchResponseModel {
  const _AuthorSearchResponseModel({@JsonKey(name: 'numFound') required this.numFound, @JsonKey(name: 'docs') required final  List<AuthorModel> docs}): _docs = docs;
  factory _AuthorSearchResponseModel.fromJson(Map<String, dynamic> json) => _$AuthorSearchResponseModelFromJson(json);

@override@JsonKey(name: 'numFound') final  int numFound;
 final  List<AuthorModel> _docs;
@override@JsonKey(name: 'docs') List<AuthorModel> get docs {
  if (_docs is EqualUnmodifiableListView) return _docs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_docs);
}


/// Create a copy of AuthorSearchResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthorSearchResponseModelCopyWith<_AuthorSearchResponseModel> get copyWith => __$AuthorSearchResponseModelCopyWithImpl<_AuthorSearchResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthorSearchResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthorSearchResponseModel&&(identical(other.numFound, numFound) || other.numFound == numFound)&&const DeepCollectionEquality().equals(other._docs, _docs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,numFound,const DeepCollectionEquality().hash(_docs));

@override
String toString() {
  return 'AuthorSearchResponseModel(numFound: $numFound, docs: $docs)';
}


}

/// @nodoc
abstract mixin class _$AuthorSearchResponseModelCopyWith<$Res> implements $AuthorSearchResponseModelCopyWith<$Res> {
  factory _$AuthorSearchResponseModelCopyWith(_AuthorSearchResponseModel value, $Res Function(_AuthorSearchResponseModel) _then) = __$AuthorSearchResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'numFound') int numFound,@JsonKey(name: 'docs') List<AuthorModel> docs
});




}
/// @nodoc
class __$AuthorSearchResponseModelCopyWithImpl<$Res>
    implements _$AuthorSearchResponseModelCopyWith<$Res> {
  __$AuthorSearchResponseModelCopyWithImpl(this._self, this._then);

  final _AuthorSearchResponseModel _self;
  final $Res Function(_AuthorSearchResponseModel) _then;

/// Create a copy of AuthorSearchResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? numFound = null,Object? docs = null,}) {
  return _then(_AuthorSearchResponseModel(
numFound: null == numFound ? _self.numFound : numFound // ignore: cast_nullable_to_non_nullable
as int,docs: null == docs ? _self._docs : docs // ignore: cast_nullable_to_non_nullable
as List<AuthorModel>,
  ));
}


}

// dart format on
