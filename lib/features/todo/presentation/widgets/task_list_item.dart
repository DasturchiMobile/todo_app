import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/features/todo/data/extensions/todo_status_extension.dart';
import 'package:todo_app/features/todo/domain/entity/todo_entity.dart';
import 'package:todo_app/features/todo/domain/enums/todo_status_enum.dart';
import 'package:todo_app/features/todo/presentation/widgets/delete_confirm_dialog.dart';

import '../../../../core/theme/app_decorations.dart';
import '../../../../core/theme/app_styles.dart';
import '../blocs/todo_bloc/todo_bloc.dart';

class TaskListItem extends StatelessWidget {
  const TaskListItem({super.key, required this.todo});

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: AppDecorations.primary50R12,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 12,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(todo.task ?? "", style: AppStyles.w500s20Dark),
                ),
                PopupMenuButton(
                  itemBuilder: (context) => [
                    if (todo.status != TodoStatus.done.name)
                      PopupMenuItem(
                        child: Text(_changeStatus(todo.status!)),
                        onTap: () => _changeStatusTodo(context),
                      ),
                    PopupMenuItem(
                      child: Text("O'chirish"),
                      onTap: () => _deleteTodo(context),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Text("${todo.id ?? 0}", style: AppStyles.w800s26Dark),
                SizedBox(width: 12),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: AppDecorations.primaryR12.copyWith(
                    color: todo.status!.getTodoStatusColor,
                  ),
                  child: Text(
                    todo.status?.getTodoStatus ?? "",
                    style: AppStyles.w400s14White,
                  ),
                ),
              ],
            ),
            Text(
              (todo.updatedAt?.isEmpty ?? true)
                  ? "Bajarilgan: ${todo.updatedAt}"
                  : "Yaratilgan: ${todo.createdAt}",
              style: AppStyles.w400s14Dark,
            ),
          ],
        ),
      ),
    );
  }

  void _deleteTodo(BuildContext context) async {
    final data = await DeleteConfirmDialog.show(context);
    if (data is bool && data == true) {
      context.read<TodoBloc>().add(TodoEvent.deleteTodo(todo.id!));
    }
  }

  String _changeStatus(String status) {
    switch (status) {
      case "doing":
        return "Tugatish";
      case "todo":
        return "Bajarish";
      default:
        return "";
    }
  }

  void _changeStatusTodo(BuildContext context) {
    switch (todo.status) {
      case "todo":
        context.read<TodoBloc>().add(
          TodoEvent.updateTodo(
            todo: todo.copyWith(status: TodoStatus.doing.name),
          ),
        );
        break;
      case "doing":
        context.read<TodoBloc>().add(
          TodoEvent.updateTodo(
            todo: todo.copyWith(status: TodoStatus.done.name),
          ),
        );
        break;
    }
  }
}
