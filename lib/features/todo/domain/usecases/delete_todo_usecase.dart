import 'package:todo_app/core/usecase/usecase.dart';
import 'package:todo_app/features/todo/domain/repositories/todo_repository.dart';

class DeleteTodoUseCase implements UseCase<NoParams, int> {
  final TodoRepository repository;
  DeleteTodoUseCase(this.repository);
  @override
  Future<NoParams> call(int params) async{
    await repository.deleteTodo(params);
    return NoParams();
  }
}