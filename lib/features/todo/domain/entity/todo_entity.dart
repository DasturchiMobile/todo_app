class Todo {
  final int? id;
  final String? task;
  final String? status;
  final String? createdAt;
  final String? updatedAt;

  const Todo({
    required this.id,
    required this.task,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  Todo copyWith({
    int? id,
    String? task,
    String? status,
    String? createdAt,
    String? updatedAt,
  }) => Todo(
    id: id ?? this.id,
    task: task ?? this.task,
    status: status ?? this.status,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
}