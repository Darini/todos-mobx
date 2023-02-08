import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:todos_mobx/controllers/todo_controller.dart';
import 'package:todos_mobx/stores/app_store.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<AppStore>(context);
    final controller = TodoController(store);

    return SizedBox(
      width: double.infinity,
      height: 80,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Observer(
            builder: (_) => TextButton(
              child: Text(
                'Hoje',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: store.currentState == 'today'
                      ? FontWeight.bold
                      : FontWeight.w100,
                  color: store.currentState == 'today'
                      ? Theme.of(context).primaryColor
                      : Colors.black,
                ),
              ),
              onPressed: () {
                controller.changeSelection('today');
              },
            ),
          ),
          Observer(
            builder: (_) => TextButton(
              child: Text(
                'Amanhã',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: store.currentState == 'tomorrow'
                      ? FontWeight.bold
                      : FontWeight.w100,
                  color: store.currentState == 'tomorrow'
                      ? Theme.of(context).primaryColor
                      : Colors.black,
                ),
              ),
              onPressed: () {
                controller.changeSelection('tomorrow');
              },
            ),
          ),
          Observer(
            builder: (_) => TextButton(
              child: Text(
                'Todas',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: store.currentState == 'all'
                      ? FontWeight.bold
                      : FontWeight.w100,
                  color: store.currentState == 'all'
                      ? Theme.of(context).primaryColor
                      : Colors.black,
                ),
              ),
              onPressed: () {
                controller.changeSelection('all');
              },
            ),
          ),
        ],
      ),
    );
  }
}
