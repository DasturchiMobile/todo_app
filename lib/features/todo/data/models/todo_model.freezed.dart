// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TodoModel {

 int? get id;@JsonKey(name: 'task') String? get task;@JsonKey(name: 'status') String? get status;@JsonKey(name: 'create_at') String? get createAt;@JsonKey(name: 'update_at') String? get updateAt;
/// Create a copy of TodoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodoModelCopyWith<TodoModel> get copyWith => _$TodoModelCopyWithImpl<TodoModel>(this as TodoModel, _$identity);

  /// Serializes this TodoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoModel&&(identical(other.id, id) || other.id == id)&&(identical(other.task, task) || other.task == task)&&(identical(other.status, status) || other.status == status)&&(identical(other.createAt, createAt) || other.createAt == createAt)&&(identical(other.updateAt, updateAt) || other.updateAt == updateAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,task,status,createAt,updateAt);

@override
String toString() {
  return 'TodoModel(id: $id, task: $task, status: $status, createAt: $createAt, updateAt: $updateAt)';
}


}

/// @nodoc
abstract mixin class $TodoModelCopyWith<$Res>  {
  factory $TodoModelCopyWith(TodoModel value, $Res Function(TodoModel) _then) = _$TodoModelCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'task') String? task,@JsonKey(name: 'status') String? status,@JsonKey(name: 'create_at') String? createAt,@JsonKey(name: 'update_at') String? updateAt
});




}
/// @nodoc
class _$TodoModelCopyWithImpl<$Res>
    implements $TodoModelCopyWith<$Res> {
  _$TodoModelCopyWithImpl(this._self, this._then);

  final TodoModel _self;
  final $Res Function(TodoModel) _then;

/// Create a copy of TodoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? task = freezed,Object? status = freezed,Object? createAt = freezed,Object? updateAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,task: freezed == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createAt: freezed == createAt ? _self.createAt : createAt // ignore: cast_nullable_to_non_nullable
as String?,updateAt: freezed == updateAt ? _self.updateAt : updateAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TodoModel].
extension TodoModelPatterns on TodoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TodoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TodoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TodoModel value)  $default,){
final _that = this;
switch (_that) {
case _TodoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TodoModel value)?  $default,){
final _that = this;
switch (_that) {
case _TodoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'task')  String? task, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'create_at')  String? createAt, @JsonKey(name: 'update_at')  String? updateAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TodoModel() when $default != null:
return $default(_that.id,_that.task,_that.status,_that.createAt,_that.updateAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'task')  String? task, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'create_at')  String? createAt, @JsonKey(name: 'update_at')  String? updateAt)  $default,) {final _that = this;
switch (_that) {
case _TodoModel():
return $default(_that.id,_that.task,_that.status,_that.createAt,_that.updateAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'task')  String? task, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'create_at')  String? createAt, @JsonKey(name: 'update_at')  String? updateAt)?  $default,) {final _that = this;
switch (_that) {
case _TodoModel() when $default != null:
return $default(_that.id,_that.task,_that.status,_that.createAt,_that.updateAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TodoModel implements TodoModel {
  const _TodoModel({this.id, @JsonKey(name: 'task') this.task, @JsonKey(name: 'status') this.status, @JsonKey(name: 'create_at') this.createAt, @JsonKey(name: 'update_at') this.updateAt});
  factory _TodoModel.fromJson(Map<String, dynamic> json) => _$TodoModelFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'task') final  String? task;
@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'create_at') final  String? createAt;
@override@JsonKey(name: 'update_at') final  String? updateAt;

/// Create a copy of TodoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TodoModelCopyWith<_TodoModel> get copyWith => __$TodoModelCopyWithImpl<_TodoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TodoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TodoModel&&(identical(other.id, id) || other.id == id)&&(identical(other.task, task) || other.task == task)&&(identical(other.status, status) || other.status == status)&&(identical(other.createAt, createAt) || other.createAt == createAt)&&(identical(other.updateAt, updateAt) || other.updateAt == updateAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,task,status,createAt,updateAt);

@override
String toString() {
  return 'TodoModel(id: $id, task: $task, status: $status, createAt: $createAt, updateAt: $updateAt)';
}


}

/// @nodoc
abstract mixin class _$TodoModelCopyWith<$Res> implements $TodoModelCopyWith<$Res> {
  factory _$TodoModelCopyWith(_TodoModel value, $Res Function(_TodoModel) _then) = __$TodoModelCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'task') String? task,@JsonKey(name: 'status') String? status,@JsonKey(name: 'create_at') String? createAt,@JsonKey(name: 'update_at') String? updateAt
});




}
/// @nodoc
class __$TodoModelCopyWithImpl<$Res>
    implements _$TodoModelCopyWith<$Res> {
  __$TodoModelCopyWithImpl(this._self, this._then);

  final _TodoModel _self;
  final $Res Function(_TodoModel) _then;

/// Create a copy of TodoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? task = freezed,Object? status = freezed,Object? createAt = freezed,Object? updateAt = freezed,}) {
  return _then(_TodoModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,task: freezed == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createAt: freezed == createAt ? _self.createAt : createAt // ignore: cast_nullable_to_non_nullable
as String?,updateAt: freezed == updateAt ? _self.updateAt : updateAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
