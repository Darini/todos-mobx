import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final String? image;
  final Function callback;
  final double? width;

  const CustomButton({
    Key? key,
    required this.text,
    required this.callback,
    this.image,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      width: width ?? 250,
      child: TextButton(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            image != null
                ? Image.asset(
                    image!,
                    width: 32,
                  )
                : const SizedBox(),
            image != null
                ? const SizedBox(
                    width: 10,
                  )
                : const SizedBox(),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
        onPressed: () {
          callback();
        },
      ),
    );
  }
}
