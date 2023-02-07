import 'package:flutter/material.dart';
import 'package:todos_mobx/components/button_widget.dart';
import 'package:todos_mobx/controllers/login_controller.dart';
import 'package:todos_mobx/views/home_view.dart';
import 'package:todos_mobx/widgets/busy_widget.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final controller = LoginController();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  var busy = false;

  handleSignIn() {
    setState(() {
      busy = true;
    });

    controller.login().then((data) {
      onSuccess();
    }).catchError((err) {
      onError();
    }).whenComplete(() {
      onComplete();
    });
  }

  onSuccess() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomeView(),
      ),
    );
  }

  onComplete() {
    setState(() {
      busy = false;
    });
  }

  onError() {
    var snackBar = const SnackBar(
      content: Text('Falha no login'),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: CustomBusy(
            busy: busy,
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
                      callback: () {
                        handleSignIn();
                      }),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
