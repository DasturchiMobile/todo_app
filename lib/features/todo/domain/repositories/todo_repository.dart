import '../entity/todo_entity.dart';

abstract class TodoRepository {
  Future<void> addTodo(Todo todoModel);
  Future<void> updateTodo({required Todo todo});
  Future<void> deleteTodo(int id);
  Future<List<Todo>> fetchTodos();
}