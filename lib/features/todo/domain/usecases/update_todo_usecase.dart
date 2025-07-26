import '../../../../core/usecase/usecase.dart';
import '../entity/todo_entity.dart';
import '../repositories/todo_repository.dart';

class UpdateTodoUseCase implements UseCase<NoParams, Todo> {
  final TodoRepository repository;
  UpdateTodoUseCase(this.repository);
  @override
  Future<NoParams> call(Todo params) async{
    await repository.updateTodo(todo: params);
    return NoParams();
  }
}