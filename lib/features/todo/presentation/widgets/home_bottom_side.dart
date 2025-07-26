import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../core/widgets/app_text_field.dart';
import '../../domain/entity/todo_entity.dart';
import '../../domain/enums/todo_status_enum.dart';
import '../blocs/todo_bloc/todo_bloc.dart';

class HomeBottomSide extends StatefulWidget {
  const HomeBottomSide({super.key, required this.controller});
  final TextEditingController controller;

  @override
  State<HomeBottomSide> createState() => _HomeBottomSideState();
}

class _HomeBottomSideState extends State<HomeBottomSide> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kBottomNavigationBarHeight, left: 12, right: 12, top: 6),
      child: AppTextField(
        controller: widget.controller,
        hintText: 'Vazifa qo\'shish',
        suffixIcon: IconButton(
          icon: const Icon(Icons.add),
          onPressed: _addTodo,
        ),
      ),
    );
  }

  _addTodo() {
    if (widget.controller.text.trim().isEmpty) return;
    context.read<TodoBloc>().add(
      TodoEvent.addTodo(
        Todo(
          id: null,
          task: widget.controller.text.trim(),
          status: TodoStatus.todo.name,
          createdAt: DateFormat("dd-MM-yyyy HH:mm").format(DateTime.now()),
          updatedAt: '',
        ),
      ),
    );
    widget.controller.clear();
  }
}
