import 'package:flutter/material.dart';
import 'package:todos_mobx/views/widgets/user_card_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const <Widget>[
          UserCard(),
        ],
      ),
    );
  }
}
