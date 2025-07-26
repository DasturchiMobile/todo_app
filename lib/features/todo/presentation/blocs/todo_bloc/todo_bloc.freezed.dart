// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TodoEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoEvent()';
}


}

/// @nodoc
class $TodoEventCopyWith<$Res>  {
$TodoEventCopyWith(TodoEvent _, $Res Function(TodoEvent) __);
}


/// Adds pattern-matching-related methods to [TodoEvent].
extension TodoEventPatterns on TodoEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchTodos value)?  fetchTodos,TResult Function( _AddTodo value)?  addTodo,TResult Function( _DeleteTodo value)?  deleteTodo,TResult Function( _UpdateTodo value)?  updateTodo,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchTodos() when fetchTodos != null:
return fetchTodos(_that);case _AddTodo() when addTodo != null:
return addTodo(_that);case _DeleteTodo() when deleteTodo != null:
return deleteTodo(_that);case _UpdateTodo() when updateTodo != null:
return updateTodo(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchTodos value)  fetchTodos,required TResult Function( _AddTodo value)  addTodo,required TResult Function( _DeleteTodo value)  deleteTodo,required TResult Function( _UpdateTodo value)  updateTodo,}){
final _that = this;
switch (_that) {
case _FetchTodos():
return fetchTodos(_that);case _AddTodo():
return addTodo(_that);case _DeleteTodo():
return deleteTodo(_that);case _UpdateTodo():
return updateTodo(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchTodos value)?  fetchTodos,TResult? Function( _AddTodo value)?  addTodo,TResult? Function( _DeleteTodo value)?  deleteTodo,TResult? Function( _UpdateTodo value)?  updateTodo,}){
final _that = this;
switch (_that) {
case _FetchTodos() when fetchTodos != null:
return fetchTodos(_that);case _AddTodo() when addTodo != null:
return addTodo(_that);case _DeleteTodo() when deleteTodo != null:
return deleteTodo(_that);case _UpdateTodo() when updateTodo != null:
return updateTodo(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchTodos,TResult Function( Todo todo)?  addTodo,TResult Function( int id)?  deleteTodo,TResult Function( Todo todo)?  updateTodo,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchTodos() when fetchTodos != null:
return fetchTodos();case _AddTodo() when addTodo != null:
return addTodo(_that.todo);case _DeleteTodo() when deleteTodo != null:
return deleteTodo(_that.id);case _UpdateTodo() when updateTodo != null:
return updateTodo(_that.todo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchTodos,required TResult Function( Todo todo)  addTodo,required TResult Function( int id)  deleteTodo,required TResult Function( Todo todo)  updateTodo,}) {final _that = this;
switch (_that) {
case _FetchTodos():
return fetchTodos();case _AddTodo():
return addTodo(_that.todo);case _DeleteTodo():
return deleteTodo(_that.id);case _UpdateTodo():
return updateTodo(_that.todo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchTodos,TResult? Function( Todo todo)?  addTodo,TResult? Function( int id)?  deleteTodo,TResult? Function( Todo todo)?  updateTodo,}) {final _that = this;
switch (_that) {
case _FetchTodos() when fetchTodos != null:
return fetchTodos();case _AddTodo() when addTodo != null:
return addTodo(_that.todo);case _DeleteTodo() when deleteTodo != null:
return deleteTodo(_that.id);case _UpdateTodo() when updateTodo != null:
return updateTodo(_that.todo);case _:
  return null;

}
}

}

/// @nodoc


class _FetchTodos implements TodoEvent {
  const _FetchTodos();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchTodos);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoEvent.fetchTodos()';
}


}




/// @nodoc


class _AddTodo implements TodoEvent {
  const _AddTodo(this.todo);
  

 final  Todo todo;

/// Create a copy of TodoEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddTodoCopyWith<_AddTodo> get copyWith => __$AddTodoCopyWithImpl<_AddTodo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddTodo&&(identical(other.todo, todo) || other.todo == todo));
}


@override
int get hashCode => Object.hash(runtimeType,todo);

@override
String toString() {
  return 'TodoEvent.addTodo(todo: $todo)';
}


}

/// @nodoc
abstract mixin class _$AddTodoCopyWith<$Res> implements $TodoEventCopyWith<$Res> {
  factory _$AddTodoCopyWith(_AddTodo value, $Res Function(_AddTodo) _then) = __$AddTodoCopyWithImpl;
@useResult
$Res call({
 Todo todo
});




}
/// @nodoc
class __$AddTodoCopyWithImpl<$Res>
    implements _$AddTodoCopyWith<$Res> {
  __$AddTodoCopyWithImpl(this._self, this._then);

  final _AddTodo _self;
  final $Res Function(_AddTodo) _then;

/// Create a copy of TodoEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? todo = null,}) {
  return _then(_AddTodo(
null == todo ? _self.todo : todo // ignore: cast_nullable_to_non_nullable
as Todo,
  ));
}


}

/// @nodoc


class _DeleteTodo implements TodoEvent {
  const _DeleteTodo(this.id);
  

 final  int id;

/// Create a copy of TodoEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteTodoCopyWith<_DeleteTodo> get copyWith => __$DeleteTodoCopyWithImpl<_DeleteTodo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteTodo&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'TodoEvent.deleteTodo(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteTodoCopyWith<$Res> implements $TodoEventCopyWith<$Res> {
  factory _$DeleteTodoCopyWith(_DeleteTodo value, $Res Function(_DeleteTodo) _then) = __$DeleteTodoCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$DeleteTodoCopyWithImpl<$Res>
    implements _$DeleteTodoCopyWith<$Res> {
  __$DeleteTodoCopyWithImpl(this._self, this._then);

  final _DeleteTodo _self;
  final $Res Function(_DeleteTodo) _then;

/// Create a copy of TodoEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteTodo(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateTodo implements TodoEvent {
  const _UpdateTodo({required this.todo});
  

 final  Todo todo;

/// Create a copy of TodoEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateTodoCopyWith<_UpdateTodo> get copyWith => __$UpdateTodoCopyWithImpl<_UpdateTodo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateTodo&&(identical(other.todo, todo) || other.todo == todo));
}


@override
int get hashCode => Object.hash(runtimeType,todo);

@override
String toString() {
  return 'TodoEvent.updateTodo(todo: $todo)';
}


}

/// @nodoc
abstract mixin class _$UpdateTodoCopyWith<$Res> implements $TodoEventCopyWith<$Res> {
  factory _$UpdateTodoCopyWith(_UpdateTodo value, $Res Function(_UpdateTodo) _then) = __$UpdateTodoCopyWithImpl;
@useResult
$Res call({
 Todo todo
});




}
/// @nodoc
class __$UpdateTodoCopyWithImpl<$Res>
    implements _$UpdateTodoCopyWith<$Res> {
  __$UpdateTodoCopyWithImpl(this._self, this._then);

  final _UpdateTodo _self;
  final $Res Function(_UpdateTodo) _then;

/// Create a copy of TodoEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? todo = null,}) {
  return _then(_UpdateTodo(
todo: null == todo ? _self.todo : todo // ignore: cast_nullable_to_non_nullable
as Todo,
  ));
}


}

/// @nodoc
mixin _$TodoState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoState()';
}


}

/// @nodoc
class $TodoStateCopyWith<$Res>  {
$TodoStateCopyWith(TodoState _, $Res Function(TodoState) __);
}


/// Adds pattern-matching-related methods to [TodoState].
extension TodoStatePatterns on TodoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Loading value)?  loading,TResult Function( _Success value)?  success,TResult Function( _Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Failure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Loading value)  loading,required TResult Function( _Success value)  success,required TResult Function( _Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Loading():
return loading(_that);case _Success():
return success(_that);case _Failure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Loading value)?  loading,TResult? Function( _Success value)?  success,TResult? Function( _Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Failure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<Todo> todos)?  success,TResult Function( Failure failure)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success(_that.todos);case _Failure() when failure != null:
return failure(_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<Todo> todos)  success,required TResult Function( Failure failure)  failure,}) {final _that = this;
switch (_that) {
case _Loading():
return loading();case _Success():
return success(_that.todos);case _Failure():
return failure(_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<Todo> todos)?  success,TResult? Function( Failure failure)?  failure,}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success(_that.todos);case _Failure() when failure != null:
return failure(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _Loading implements TodoState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoState.loading()';
}


}




/// @nodoc


class _Success implements TodoState {
  const _Success({required final  List<Todo> todos}): _todos = todos;
  

 final  List<Todo> _todos;
 List<Todo> get todos {
  if (_todos is EqualUnmodifiableListView) return _todos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_todos);
}


/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessCopyWith<_Success> get copyWith => __$SuccessCopyWithImpl<_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success&&const DeepCollectionEquality().equals(other._todos, _todos));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_todos));

@override
String toString() {
  return 'TodoState.success(todos: $todos)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) = __$SuccessCopyWithImpl;
@useResult
$Res call({
 List<Todo> todos
});




}
/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? todos = null,}) {
  return _then(_Success(
todos: null == todos ? _self._todos : todos // ignore: cast_nullable_to_non_nullable
as List<Todo>,
  ));
}


}

/// @nodoc


class _Failure implements TodoState {
  const _Failure({required this.failure});
  

 final  Failure failure;

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureCopyWith<_Failure> get copyWith => __$FailureCopyWithImpl<_Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failure&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'TodoState.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) = __$FailureCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class __$FailureCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(_Failure(
failure: null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

// dart format on
