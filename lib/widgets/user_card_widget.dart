import 'package:flutter/material.dart';
import 'package:todos_mobx/components/avatar_widget.dart';

class UserCard extends StatelessWidget {
  const UserCard({Key? key}) : super(key: key);

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
          const CustomAvatar(
            path: 'https://place-hold.it/80',
            width: 80,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Lucas Darini',
            style: TextStyle(
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
              onPressed: () {},
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
