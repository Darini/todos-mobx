import 'dart:io';

import 'package:dio/dio.dart';
import 'package:todos_mobx/models/todo_item_model.dart';
import 'package:todos_mobx/user.dart';

class TodoRepository {
  Future<List<TodoItemModel>> getTodayTodos() async {
    String url = 'https://10.0.2.2:5001/v1/todos/undone/today';

    Response response = await Dio().get(
      url,
      options: Options(
        headers: {HttpHeaders.authorizationHeader: 'Bearer ${user.token}'},
      ),
    );

    return (response.data as List)
        .map((todos) => TodoItemModel.fromJson(todos))
        .toList();
  }

  Future<List<TodoItemModel>> getTomorrowTodos() async {
    String url = 'https://10.0.2.2:5001/v1/todos/undone/tomorrow';

    Response response = await Dio().get(
      url,
      options: Options(
        headers: {HttpHeaders.authorizationHeader: 'Bearer ${user.token}'},
      ),
    );

    return (response.data as List)
        .map((todos) => TodoItemModel.fromJson(todos))
        .toList();
  }

  Future<List<TodoItemModel>> getAllTodos() async {
    String url = 'https://10.0.2.2:5001/v1/todos';

    Response response = await Dio().get(
      url,
      options: Options(
        headers: {HttpHeaders.authorizationHeader: 'Bearer ${user.token}'},
      ),
    );

    return (response.data as List)
        .map((todos) => TodoItemModel.fromJson(todos))
        .toList();
  }

  Future<TodoItemModel?> add(TodoItemModel item) async {
    String url = 'https://10.0.2.2:5001/v1/todos';

    try {
      Response response = await Dio().post(
        url,
        data: item.toJson(),
        options: Options(
          headers: {HttpHeaders.authorizationHeader: 'Bearer ${user.token}'},
        ),
      );

      return TodoItemModel.fromJson(response.data['data']);
    } catch (e) {
      return null;
    }
  }

  Future<TodoItemModel?> markAsDone(TodoItemModel item) async {
    String url = 'https://10.0.2.2:5001/v1/todos/mark-as-done';

    try {
      Response response = await Dio().put(
        url,
        data: item,
        options: Options(
          headers: {HttpHeaders.authorizationHeader: 'Bearer ${user.token}'},
        ),
      );
      return TodoItemModel.fromJson(response.data['data']);
    } catch (e) {
      return null;
    }
  }
}
