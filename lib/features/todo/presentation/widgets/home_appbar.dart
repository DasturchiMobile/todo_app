import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/features/todo/domain/enums/todo_status_enum.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_decorations.dart';
import '../blocs/todo_bloc/todo_bloc.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 50);

  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoBloc, TodoState>(
      builder: (context, state) {
        return AppBar(
          title: const Text('Vazifalar'),
          elevation: 0,
          scrolledUnderElevation: 0,
          centerTitle: true,
          bottom: TabBar(
            padding: EdgeInsets.symmetric(horizontal: 8),
            dividerHeight: 0,
            onTap: (index) {
              context.read<TodoBloc>().add(TodoEvent.fetchTodos());
            },
            indicator: AppDecorations.indicator,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: AppColors.white,
            splashBorderRadius: BorderRadius.circular(12),
            tabs: [
              Tab(text: "X: ${state.whenOrNull(success: (success) => success.length.toString())}"),
              Tab(text: "Y: ${state.whenOrNull(success: (success) => success.where((e) => e.status == TodoStatus.todo.name).length.toString())}"),
              Tab(text: "Z: ${state.whenOrNull(success: (success) => success.where((e) => e.status == TodoStatus.done.name).length.toString())}"),
            ],
          ),
        );
      },
    );
  }
}
