import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todos_mobx/controllers/todo_controller.dart';
import 'package:todos_mobx/stores/app_store.dart';
import 'package:todos_mobx/views/create_todo_view.dart';
import 'package:todos_mobx/widgets/navbar_widget.dart';
import 'package:todos_mobx/widgets/todo_list_widget.dart';
import 'package:todos_mobx/widgets/user_card_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<AppStore>(context);
    final controller = TodoController(store);

    if (store.currentState == 'none') {
      controller.changeSelection('today');
    }

    return Scaffold(
      body: Column(
        children: <Widget>[
          UserCard(),
          const Navbar(),
          Expanded(
            child: TodoList(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CreateTodoView(),
            ),
          );
        },
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
