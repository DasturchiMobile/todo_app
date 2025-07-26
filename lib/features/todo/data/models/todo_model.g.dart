// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TodoModel _$TodoModelFromJson(Map<String, dynamic> json) => _TodoModel(
  id: (json['id'] as num?)?.toInt(),
  task: json['task'] as String?,
  status: json['status'] as String?,
  createAt: json['create_at'] as String?,
  updateAt: json['update_at'] as String?,
);

Map<String, dynamic> _$TodoModelToJson(_TodoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'task': instance.task,
      'status': instance.status,
      'create_at': instance.createAt,
      'update_at': instance.updateAt,
    };
