// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TodoItemModel _$TodoItemModelFromJson(Map<String, dynamic> json) =>
    TodoItemModel(
      id: json['id'] as String?,
      title: json['title'] as String?,
      done: json['done'] as bool?,
      date:
          json['data'] == null ? null : DateTime.parse(json['data'] as String),
    );

Map<String, dynamic> _$TodoItemModelToJson(TodoItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'done': instance.done,
      'data': instance.date?.toIso8601String(),
    };
