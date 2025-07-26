import 'package:get_it/get_it.dart';
import 'package:todo_app/features/todo/domain/repositories/todo_repository.dart';
import 'package:todo_app/features/todo/domain/usecases/add_todo_usecase.dart';
import 'package:todo_app/features/todo/domain/usecases/update_todo_usecase.dart';
import 'package:todo_app/features/todo/presentation/blocs/todo_bloc/todo_bloc.dart';

import '../../features/todo/data/datasources/todo_datasource_impl.dart';
import '../../features/todo/data/repositories/todo_repositories_impl.dart';
import '../../features/todo/domain/datasources/todo_datasource.dart';
import '../../features/todo/domain/usecases/delete_todo_usecase.dart';
import '../../features/todo/domain/usecases/fetch_todo_usecase.dart';

GetIt sl = GetIt.instance;

Future<void> serviceLocator({bool isUnitTest = false}) async {
  if (isUnitTest) {
    await sl.reset();
  }
  _dataSources();
  _repositories();
  _useCase();
  _blocs();
}

void _repositories() {
  sl.registerLazySingleton<TodoRepository>(
    () => TodoRepositoryImpl(sl<TodoDatasource>()),
  );
}

void _dataSources() {
  sl.registerLazySingleton<TodoDatasource>(() => TodoDatasourceImpl());
}

void _useCase() {
  sl.registerLazySingleton(() => AddTodoUseCase(sl<TodoRepository>()));
  sl.registerLazySingleton(() => DeleteTodoUseCase(sl<TodoRepository>()));
  sl.registerLazySingleton(() => FetchTodoUseCase(sl<TodoRepository>()));
  sl.registerLazySingleton(() => UpdateTodoUseCase(sl<TodoRepository>()));
}

void _blocs() {
  sl.registerFactory(
    () => TodoBloc(
      addTodoUseCase: sl<AddTodoUseCase>(),
      deleteTodoUseCase: sl<DeleteTodoUseCase>(),
      fetchTodoUseCase: sl<FetchTodoUseCase>(),
      updateTodoUseCase: sl<UpdateTodoUseCase>(),
    ),
  );
}
