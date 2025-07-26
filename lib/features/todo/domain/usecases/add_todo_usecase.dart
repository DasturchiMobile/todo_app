import 'package:todo_app/features/todo/data/models/todo_model.dart';

import '../../../../core/usecase/usecase.dart';
import '../entity/todo_entity.dart';
import '../repositories/todo_repository.dart';

class AddTodoUseCase implements UseCase<NoParams, Todo> {
  final TodoRepository repository;
  AddTodoUseCase(this.repository);
  @override
  Future<NoParams> call(Todo params) async{
    await repository.addTodo(params);
    return NoParams();
  }

}