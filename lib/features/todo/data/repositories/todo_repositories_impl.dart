import 'package:todo_app/features/todo/data/mapper/todo_mapper.dart';
import 'package:todo_app/features/todo/domain/datasources/todo_datasource.dart';
import 'package:todo_app/features/todo/domain/repositories/todo_repository.dart';

import '../../domain/entity/todo_entity.dart';

class TodoRepositoryImpl extends TodoRepository {
  TodoDatasource datasource;
  TodoRepositoryImpl(this.datasource);
  @override
  Future<void> addTodo(Todo todo) async{
    await datasource.addTodo(todo.toModel());
  }

  @override
  Future<void> deleteTodo(int id) async{
    await datasource.deleteTodo(id);
  }

  @override
  Future<List<Todo>> fetchTodos() async{
    final data = await datasource.fetchTodos();
    return data.map((e) => e.toEntity()).toList();
  }

  @override
  Future<void> updateTodo({required Todo todo}) async{
    await datasource.updateTodo(todo: todo.toModel());
  }
}