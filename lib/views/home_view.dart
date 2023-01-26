import 'package:flutter/material.dart';
import 'package:todos_mobx/views/create_todo_view.dart';
import 'package:todos_mobx/views/widgets/navbar_widget.dart';
import 'package:todos_mobx/views/widgets/todo_list_widget.dart';
import 'package:todos_mobx/views/widgets/user_card_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const <Widget>[
          UserCard(),
          Navbar(),
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
