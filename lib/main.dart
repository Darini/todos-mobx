import 'package:flutter/material.dart';

import 'package:todos_mobx/themes/app_theme.dart';
import 'package:todos_mobx/views/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDos',
      theme: appTheme(),
      home: const LoginView(),
    );
  }
}
