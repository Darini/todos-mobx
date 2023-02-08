import 'package:json_annotation/json_annotation.dart';

part 'todo_item_model.g.dart';

abstract class TodoItemModelKeys {
  static const id = 'id';
  static const title = 'title';
  static const done = 'done';
  static const date = 'data';
}

@JsonSerializable()
class TodoItemModel {
  @JsonKey(name: TodoItemModelKeys.id)
  String? id;

  @JsonKey(name: TodoItemModelKeys.title)
  String? title;

  @JsonKey(name: TodoItemModelKeys.done)
  bool? done;

  @JsonKey(name: TodoItemModelKeys.date)
  DateTime? date;

  TodoItemModel({this.id, this.title, this.done, this.date});

  factory TodoItemModel.fromJson(Map<String, dynamic> json) =>
      _$TodoItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$TodoItemModelToJson(this);
}
