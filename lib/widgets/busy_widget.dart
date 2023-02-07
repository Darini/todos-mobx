import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomBusy extends StatelessWidget {
  bool busy = false;
  Widget child;

  CustomBusy({Key? key, required this.busy, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return busy
        ? Center(
            child: Container(
              margin: EdgeInsets.only(
                  top: (MediaQuery.of(context).size.height / 2) - 50),
              height: 50,
              width: 50,
              child: const CircularProgressIndicator(),
            ),
          )
        : child;
  }
}
