import 'dart:developer';

import 'package:flutter/services.dart';

import '../../features/todo/domain/entity/todo_entity.dart';
import '../../features/todo/domain/enums/todo_status_enum.dart';

class NativeSender {
  static final MethodChannel _channel = MethodChannel('uz.mobildasturchi.todoApp/statuses');

  static sendToNative(List<Todo> todos) async{
    final Map<String, int> data = {
      'all': todos.length,
      'todo': todos.where((e) => e.status == TodoStatus.todo.name).length,
      'done': todos.where((e) => e.status == TodoStatus.done.name).length,
    };
    try {
      final result = await _channel.invokeMethod('statuses', data);
      log(result.toString());
    } on PlatformException catch (e) {
      log('Nativega yuborishda xatolik: ${e.message}');
    }
  }
}