import 'package:flutter/material.dart';
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
      home: null,
    );
  }
}
