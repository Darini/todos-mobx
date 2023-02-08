import 'package:mobx/mobx.dart';
import 'package:todos_mobx/models/todo_item_model.dart';

class AppStore {
  @observable
  String currentState = 'none';

  @observable
  bool busy = false;

  @observable
  ObservableList<TodoItemModel> todos = ObservableList<TodoItemModel>();

  @action
  void changeSelected(String state) {
    currentState = state;
  }

  @action
  void add(TodoItemModel item) {
    todos.add(item);
  }

  @action
  void setTodos(List<TodoItemModel> items) {
    todos.addAll(items);
  }

  @action
  void clearTodos() {
    todos.clear();
  }
}
