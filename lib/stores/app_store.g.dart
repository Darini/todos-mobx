// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AppStore on _AppStore, Store {
  late final _$currentStateAtom =
      Atom(name: '_AppStore.currentState', context: context);

  @override
  String get currentState {
    _$currentStateAtom.reportRead();
    return super.currentState;
  }

  @override
  set currentState(String value) {
    _$currentStateAtom.reportWrite(value, super.currentState, () {
      super.currentState = value;
    });
  }

  late final _$busyAtom = Atom(name: '_AppStore.busy', context: context);

  @override
  bool get busy {
    _$busyAtom.reportRead();
    return super.busy;
  }

  @override
  set busy(bool value) {
    _$busyAtom.reportWrite(value, super.busy, () {
      super.busy = value;
    });
  }

  late final _$todosAtom = Atom(name: '_AppStore.todos', context: context);

  @override
  ObservableList<TodoItemModel> get todos {
    _$todosAtom.reportRead();
    return super.todos;
  }

  @override
  set todos(ObservableList<TodoItemModel> value) {
    _$todosAtom.reportWrite(value, super.todos, () {
      super.todos = value;
    });
  }

  late final _$_AppStoreActionController =
      ActionController(name: '_AppStore', context: context);

  @override
  void changeSelected(String state) {
    final _$actionInfo = _$_AppStoreActionController.startAction(
        name: '_AppStore.changeSelected');
    try {
      return super.changeSelected(state);
    } finally {
      _$_AppStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void add(TodoItemModel item) {
    final _$actionInfo =
        _$_AppStoreActionController.startAction(name: '_AppStore.add');
    try {
      return super.add(item);
    } finally {
      _$_AppStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTodos(List<TodoItemModel> items) {
    final _$actionInfo =
        _$_AppStoreActionController.startAction(name: '_AppStore.setTodos');
    try {
      return super.setTodos(items);
    } finally {
      _$_AppStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearTodos() {
    final _$actionInfo =
        _$_AppStoreActionController.startAction(name: '_AppStore.clearTodos');
    try {
      return super.clearTodos();
    } finally {
      _$_AppStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentState: ${currentState},
busy: ${busy},
todos: ${todos}
    ''';
  }
}
