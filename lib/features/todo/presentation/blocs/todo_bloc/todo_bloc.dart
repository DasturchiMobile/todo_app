import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/core/usecase/usecase.dart';
import 'package:todo_app/features/todo/domain/usecases/add_todo_usecase.dart';
import 'package:todo_app/features/todo/domain/usecases/delete_todo_usecase.dart';
import 'package:todo_app/features/todo/domain/usecases/fetch_todo_usecase.dart';

import '../../../../../core/error/failure/failure_model.dart';
import '../../../../../core/native/native_sender.dart';
import '../../../domain/entity/todo_entity.dart';
import '../../../domain/enums/todo_status_enum.dart';
import '../../../domain/usecases/update_todo_usecase.dart';

part 'todo_event.dart';

part 'todo_state.dart';

part 'todo_bloc.freezed.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final AddTodoUseCase addTodoUseCase;
  final DeleteTodoUseCase deleteTodoUseCase;
  final FetchTodoUseCase fetchTodoUseCase;
  final UpdateTodoUseCase updateTodoUseCase;

  TodoBloc({
    required this.addTodoUseCase,
    required this.deleteTodoUseCase,
    required this.fetchTodoUseCase,
    required this.updateTodoUseCase,
  }) : super(const TodoState.loading()) {
    on<_FetchTodos>(_fetchTodos);
    on<_AddTodo>(_addTodo);
    on<_DeleteTodo>(_deleteTodo);
    on<_UpdateTodo>(_updateTodo);
  }



  _fetchTodos(_FetchTodos event, Emitter<TodoState> emit) async {
    final data = await fetchTodoUseCase(NoParams());
    await NativeSender.sendToNative(data);
    emit(TodoState.success(todos: data));
  }

  _addTodo(_AddTodo event, Emitter<TodoState> emit) async {
    await addTodoUseCase(event.todo);
    add(TodoEvent.fetchTodos());
  }

  _deleteTodo(_DeleteTodo event, Emitter<TodoState> emit) async {
    await deleteTodoUseCase(event.id);
    add(TodoEvent.fetchTodos());
  }

  _updateTodo(_UpdateTodo event, Emitter<TodoState> emit) async {
    await updateTodoUseCase(event.todo);
    add(TodoEvent.fetchTodos());
  }


}
