import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(
        left: 40,
      ),
      children: <Widget>[
        ListTile(
          title: Text(
            'Ir ao supermercado',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          subtitle: Text('01/02/2023'),
        ),
        ListTile(
          title: Text(
            'Ir para a academia',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black.withOpacity(0.2),
            ),
          ),
          subtitle: Text('02/02/2023'),
        ),
      ],
    );
  }
}
