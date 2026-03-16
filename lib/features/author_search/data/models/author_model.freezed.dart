// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'author_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthorModel {

 String get key; String get name;@JsonKey(name: 'birth_date') String? get birthDate;@JsonKey(name: 'top_work') String? get topWork;@JsonKey(name: 'work_count') int? get workCount;
/// Create a copy of AuthorModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthorModelCopyWith<AuthorModel> get copyWith => _$AuthorModelCopyWithImpl<AuthorModel>(this as AuthorModel, _$identity);

  /// Serializes this AuthorModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthorModel&&(identical(other.key, key) || other.key == key)&&(identical(other.name, name) || other.name == name)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.topWork, topWork) || other.topWork == topWork)&&(identical(other.workCount, workCount) || other.workCount == workCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,name,birthDate,topWork,workCount);

@override
String toString() {
  return 'AuthorModel(key: $key, name: $name, birthDate: $birthDate, topWork: $topWork, workCount: $workCount)';
}


}

/// @nodoc
abstract mixin class $AuthorModelCopyWith<$Res>  {
  factory $AuthorModelCopyWith(AuthorModel value, $Res Function(AuthorModel) _then) = _$AuthorModelCopyWithImpl;
@useResult
$Res call({
 String key, String name,@JsonKey(name: 'birth_date') String? birthDate,@JsonKey(name: 'top_work') String? topWork,@JsonKey(name: 'work_count') int? workCount
});




}
/// @nodoc
class _$AuthorModelCopyWithImpl<$Res>
    implements $AuthorModelCopyWith<$Res> {
  _$AuthorModelCopyWithImpl(this._self, this._then);

  final AuthorModel _self;
  final $Res Function(AuthorModel) _then;

/// Create a copy of AuthorModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,Object? name = null,Object? birthDate = freezed,Object? topWork = freezed,Object? workCount = freezed,}) {
  return _then(_self.copyWith(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String?,topWork: freezed == topWork ? _self.topWork : topWork // ignore: cast_nullable_to_non_nullable
as String?,workCount: freezed == workCount ? _self.workCount : workCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthorModel].
extension AuthorModelPatterns on AuthorModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthorModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthorModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthorModel value)  $default,){
final _that = this;
switch (_that) {
case _AuthorModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthorModel value)?  $default,){
final _that = this;
switch (_that) {
case _AuthorModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String key,  String name, @JsonKey(name: 'birth_date')  String? birthDate, @JsonKey(name: 'top_work')  String? topWork, @JsonKey(name: 'work_count')  int? workCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthorModel() when $default != null:
return $default(_that.key,_that.name,_that.birthDate,_that.topWork,_that.workCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String key,  String name, @JsonKey(name: 'birth_date')  String? birthDate, @JsonKey(name: 'top_work')  String? topWork, @JsonKey(name: 'work_count')  int? workCount)  $default,) {final _that = this;
switch (_that) {
case _AuthorModel():
return $default(_that.key,_that.name,_that.birthDate,_that.topWork,_that.workCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String key,  String name, @JsonKey(name: 'birth_date')  String? birthDate, @JsonKey(name: 'top_work')  String? topWork, @JsonKey(name: 'work_count')  int? workCount)?  $default,) {final _that = this;
switch (_that) {
case _AuthorModel() when $default != null:
return $default(_that.key,_that.name,_that.birthDate,_that.topWork,_that.workCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthorModel extends AuthorModel {
  const _AuthorModel({required this.key, required this.name, @JsonKey(name: 'birth_date') this.birthDate, @JsonKey(name: 'top_work') this.topWork, @JsonKey(name: 'work_count') this.workCount}): super._();
  factory _AuthorModel.fromJson(Map<String, dynamic> json) => _$AuthorModelFromJson(json);

@override final  String key;
@override final  String name;
@override@JsonKey(name: 'birth_date') final  String? birthDate;
@override@JsonKey(name: 'top_work') final  String? topWork;
@override@JsonKey(name: 'work_count') final  int? workCount;

/// Create a copy of AuthorModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthorModelCopyWith<_AuthorModel> get copyWith => __$AuthorModelCopyWithImpl<_AuthorModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthorModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthorModel&&(identical(other.key, key) || other.key == key)&&(identical(other.name, name) || other.name == name)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.topWork, topWork) || other.topWork == topWork)&&(identical(other.workCount, workCount) || other.workCount == workCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,name,birthDate,topWork,workCount);

@override
String toString() {
  return 'AuthorModel(key: $key, name: $name, birthDate: $birthDate, topWork: $topWork, workCount: $workCount)';
}


}

/// @nodoc
abstract mixin class _$AuthorModelCopyWith<$Res> implements $AuthorModelCopyWith<$Res> {
  factory _$AuthorModelCopyWith(_AuthorModel value, $Res Function(_AuthorModel) _then) = __$AuthorModelCopyWithImpl;
@override @useResult
$Res call({
 String key, String name,@JsonKey(name: 'birth_date') String? birthDate,@JsonKey(name: 'top_work') String? topWork,@JsonKey(name: 'work_count') int? workCount
});




}
/// @nodoc
class __$AuthorModelCopyWithImpl<$Res>
    implements _$AuthorModelCopyWith<$Res> {
  __$AuthorModelCopyWithImpl(this._self, this._then);

  final _AuthorModel _self;
  final $Res Function(_AuthorModel) _then;

/// Create a copy of AuthorModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,Object? name = null,Object? birthDate = freezed,Object? topWork = freezed,Object? workCount = freezed,}) {
  return _then(_AuthorModel(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String?,topWork: freezed == topWork ? _self.topWork : topWork // ignore: cast_nullable_to_non_nullable
as String?,workCount: freezed == workCount ? _self.workCount : workCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
