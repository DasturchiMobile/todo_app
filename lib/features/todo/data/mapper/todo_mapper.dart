import '../../domain/entity/todo_entity.dart';
import '../models/todo_model.dart';

extension TodoMapper on TodoModel {
  Todo toEntity() => Todo(
    id: id,
    task: task,
    status: status,
    createdAt: createAt,
    updatedAt: updateAt,
  );
}

extension TodoEntityMapper on Todo {
  TodoModel toModel() => TodoModel(
    id: id,
    task: task,
    status: status,
    createAt: createdAt,
    updateAt: updatedAt,
  );
}