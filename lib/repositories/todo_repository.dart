import 'package:todos_mobx/models/todo_item_model.dart';

class TodoRepository {
  Future<List<TodoItemModel>> getTodayTodos() async {
    List<TodoItemModel> todos = [];

    todos.add(
      TodoItemModel(
        id: '123456',
        title: 'Hoje',
        done: false,
        date: DateTime.now(),
      ),
    );

    await Future.delayed(
      const Duration(
        seconds: 15,
      ),
    );

    return todos;
  }

  Future<List<TodoItemModel>> getTomorrowTodos() async {
    List<TodoItemModel> todos = [];

    todos.add(
      TodoItemModel(
        id: '1234567',
        title: 'Amanhã',
        done: false,
        date: DateTime.now(),
      ),
    );

    await Future.delayed(
      const Duration(
        seconds: 15,
      ),
    );

    return todos;
  }

  Future<List<TodoItemModel>> getAllTodos() async {
    List<TodoItemModel> todos = [];

    todos.add(
      TodoItemModel(
        id: '123456',
        title: 'Hoje',
        done: false,
        date: DateTime.now(),
      ),
    );
    todos.add(
      TodoItemModel(
        id: '1234567',
        title: 'Amanhã',
        done: false,
        date: DateTime.now(),
      ),
    );
    await Future.delayed(
      const Duration(
        seconds: 15,
      ),
    );

    return todos;
  }

  //Future<TodoItemModel> add(TodoItemModel item) async {}
  //Future<TodoItemModel> markAsDone(TodoItemModel item) async {}
}
