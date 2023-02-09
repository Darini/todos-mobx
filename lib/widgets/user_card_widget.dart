import 'package:flutter/material.dart';
import 'package:todos_mobx/components/avatar_widget.dart';
import 'package:todos_mobx/controllers/login_controller.dart';
import 'package:todos_mobx/user.dart';
import 'package:todos_mobx/views/login_view.dart';

class UserCard extends StatelessWidget {
  final controller = LoginController();

  UserCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 40,
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage('assets/images/notification.png'),
          fit: BoxFit.cover,
          alignment: Alignment.bottomCenter,
        ),
      ),
      width: double.infinity,
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          CustomAvatar(
            path: user.picture,
            width: 80,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            user.name ?? '',
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 40,
            child: TextButton(
              child: const Text(
                'Sair',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                controller.logout().then((data) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginView(),
                    ),
                  );
                });
              },
            ),
          ),
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
