import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:todo_app/core/theme/app_colors.dart';
import 'package:todo_app/core/widgets/app_text_field.dart';
import 'package:todo_app/features/todo/domain/entity/todo_entity.dart';
import 'package:todo_app/features/todo/domain/enums/todo_status_enum.dart';
import 'package:todo_app/features/todo/presentation/blocs/todo_bloc/todo_bloc.dart';
import 'package:todo_app/features/todo/presentation/widgets/home_appbar.dart';
import 'package:todo_app/features/todo/presentation/widgets/home_body.dart';
import 'package:todo_app/features/todo/presentation/widgets/home_bottom_side.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/theme/app_decorations.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<TodoBloc>()..add(TodoEvent.fetchTodos()),
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          bottomSheet: HomeBottomSide(controller: _controller),
          appBar: HomeAppbar(),
          body: HomeBody(),
        ),
      ),
    );
  }
}
