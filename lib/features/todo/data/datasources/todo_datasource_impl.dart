import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo_app/features/todo/data/models/todo_model.dart';

import '../../domain/datasources/todo_datasource.dart';

class TodoDatasourceImpl implements TodoDatasource {
  late final Database db;
  bool isInit = false;
  Future<void> init() async {
    db = await openDatabase(
      join(await getDatabasesPath(), 'todo_database.db'),
      onCreate: (db, version) {
        return db.execute('''
        CREATE TABLE todos (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          task TEXT,
          status TEXT,
          create_at TEXT,
          update_at TEXT
        )
      ''');
      },
      version: 1,
    );
  }
  @override
  Future<void> addTodo(TodoModel todo) async{
    await db.insert(
      'todos',
      {
        'task': todo.task,
        'status': todo.status,
        'create_at': todo.createAt,
        'update_at': todo.updateAt,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  @override
  Future<void> deleteTodo(int id) async{
    await db.delete(
      'todos',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  @override
  Future<List<TodoModel>> fetchTodos() async{
    if(!isInit){
    await init();
    isInit = true;
    }
    final List<Map<String, dynamic>> maps = await db.query('todos');
    final data = maps.map((json) => TodoModel.fromJson(json)).toList();
    return data;
  }

  @override
  Future<void> updateTodo({required TodoModel todo}) async{
    await db.update(
      'todos',
      todo.toJson(),
      where: 'id = ?',
      whereArgs: [todo.id],
    );
  }
}