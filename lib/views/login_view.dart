import 'package:flutter/material.dart';
import 'package:todos_mobx/components/button_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Card(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  width: double.infinity,
                ),
                Image.asset(
                  'assets/images/notification.png',
                  width: 250,
                ),
                const Text(
                  'Olá desconhecido',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                  text: 'Login com Google',
                  image: 'assets/images/google.png',
                  callback: () {},
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
