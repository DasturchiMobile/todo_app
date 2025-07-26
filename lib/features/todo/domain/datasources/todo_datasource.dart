import 'package:todo_app/features/todo/data/models/todo_model.dart';

abstract class TodoDatasource {
  Future<List<TodoModel>> fetchTodos();
  Future<void> addTodo(TodoModel todoModel);
  Future<void> updateTodo({required TodoModel todo});
  Future<void> deleteTodo(int id);
}