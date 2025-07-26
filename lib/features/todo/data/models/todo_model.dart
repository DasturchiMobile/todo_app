import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'todo_model.freezed.dart';
part 'todo_model.g.dart';

@freezed
class TodoModel with _$TodoModel {
  const factory TodoModel({
    int? id,
    @JsonKey(name: 'task')
    String? task,
    @JsonKey(name: 'status')
    String? status,
    @JsonKey(name: 'create_at')
    String? createAt,
    @JsonKey(name: 'update_at')
    String? updateAt,
  }) = _TodoModel;

  factory TodoModel.fromJson(Map<String, dynamic> json) => _$TodoModelFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
