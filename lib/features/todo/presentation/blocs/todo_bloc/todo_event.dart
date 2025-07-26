part of 'todo_bloc.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.fetchTodos() = _FetchTodos;
  const factory TodoEvent.addTodo(Todo todo) = _AddTodo;
  const factory TodoEvent.deleteTodo(int id) = _DeleteTodo;
  const factory TodoEvent.updateTodo({required Todo todo}) = _UpdateTodo;
}