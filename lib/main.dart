import 'package:flutter/material.dart';
import 'package:todos_mobx/components/avatar_widget.dart';
import 'package:todos_mobx/components/button_widget.dart';
import 'package:todos_mobx/themes/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDos',
      theme: appTheme(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 40,
            ),
            CustomButton(
              text: 'Teste',
              callback: () {},
              width: 300,
              image: 'assets/images/google.png',
            ),
            const CustomAvatar(
              path: 'https://place-hold.it/200',
              width: 120,
            ),
          ],
        ),
      ),
    );
  }
}
