import '../../../../core/usecase/usecase.dart';
import '../entity/todo_entity.dart';
import '../repositories/todo_repository.dart';

class FetchTodoUseCase implements UseCase<List<Todo>, NoParams> {
  final TodoRepository repository;
  FetchTodoUseCase(this.repository);
  @override
  Future<List<Todo>> call(NoParams params) async {
    return await repository.fetchTodos();
  }
}