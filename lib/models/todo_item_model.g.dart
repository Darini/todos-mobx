// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TodoItemModel _$TodoItemModelFromJson(Map<String, dynamic> json) =>
    TodoItemModel(
      json['id'] as String,
      json['title'] as String,
      json['done'] as bool,
      DateTime.parse(json['data'] as String),
    );

Map<String, dynamic> _$TodoItemModelToJson(TodoItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'done': instance.done,
      'data': instance.date.toIso8601String(),
    };
