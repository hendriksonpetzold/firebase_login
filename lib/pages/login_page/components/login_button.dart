import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 80,
        width: 400,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(80)),
          color: Color.fromARGB(255, 238, 15, 55),
        ),
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/homepage');
          },
          child: const Text(
            'LOGIN',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
