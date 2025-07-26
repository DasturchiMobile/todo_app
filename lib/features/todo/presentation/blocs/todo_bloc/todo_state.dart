part of 'todo_bloc.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState.loading() = _Loading;
  const factory TodoState.success({required List<Todo> todos}) = _Success;
  const factory TodoState.failure({required Failure failure}) = _Failure;
}
