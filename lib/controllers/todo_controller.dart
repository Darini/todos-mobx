import 'package:todos_mobx/repositories/todo_repository.dart';
import 'package:todos_mobx/stores/app_store.dart';

class TodoController {
  AppStore? _store;
  TodoRepository? _repository;

  TodoController(AppStore store) {
    _store = store;
    _repository = TodoRepository();
  }

  void changeSelection(String selection) {
    _store!.clearTodos();

    switch (selection) {
      case 'today':
        {
          _store!.busy = true;
          _store!.changeSelected('today');
          _repository!.getTodayTodos().then((data) {
            _store!.setTodos(data);
            _store!.busy = false;
          });

          return;
        }
      case 'tomorrow':
        {
          _store!.busy = true;
          _store!.changeSelected('tomorrow');
          _repository!.getTomorrowTodos().then((data) {
            _store!.setTodos(data);
            _store!.busy = false;
          });

          return;
        }
      case 'all':
        {
          _store!.busy = true;
          _store!.changeSelected('all');
          _repository!.getAllTodos().then((data) {
            _store!.setTodos(data);
            _store!.busy = false;
          });

          return;
        }
    }
  }
}
