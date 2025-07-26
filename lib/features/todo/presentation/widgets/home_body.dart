import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/core/theme/app_colors.dart';
import 'package:todo_app/core/theme/app_decorations.dart';
import 'package:todo_app/features/todo/presentation/widgets/no_task_widget.dart';
import 'package:todo_app/features/todo/presentation/widgets/task_list_item.dart';

import '../../domain/entity/todo_entity.dart';
import '../../domain/enums/todo_status_enum.dart';
import '../blocs/todo_bloc/todo_bloc.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoBloc, TodoState>(
      builder: (context, state) {
        return state.when(
            loading: () => Center(child: CircularProgressIndicator(color: AppColors.primary)),
            success: (success){
              if(success.isEmpty){
                return NoTaskWidget();
              }
              return TabBarView(children: [
                _buildTaskList(success),
                _buildTaskList(success.where((e) => e.status == TodoStatus.todo.name).toList()),
                _buildTaskList(success.where((e) => e.status == TodoStatus.done.name).toList()),
              ]);
            },
            failure: (failure){
              return Center(child: Text(failure.message));
            },
        );
      },
    );
  }

  Widget _buildTaskList(List<Todo> todos) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
      child: DecoratedBox(
        decoration: AppDecorations.whiteR12,
        child: Column(
          children: [
            Expanded(child: ListView.separated(
              padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
              itemCount: todos.length,
              itemBuilder: (context, index) {
                final todo = todos[index];
                return TaskListItem(todo: todo);
              },
              separatorBuilder: (BuildContext context, int index) => SizedBox(height: 12),
            ),),
            SizedBox(height: kBottomNavigationBarHeight + 80),
          ],
        ),
      ),
    );
  }
}
