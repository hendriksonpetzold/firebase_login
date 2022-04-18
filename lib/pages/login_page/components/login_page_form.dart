import 'package:flutter/material.dart';

import 'package:working_with_firebase/service/auth_service.dart';

class LoginPageForm extends StatefulWidget {
  LoginPageForm({Key? key}) : super(key: key);

  @override
  State<LoginPageForm> createState() => _LoginPageFormState();
}

class _LoginPageFormState extends State<LoginPageForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController email = TextEditingController();

  final TextEditingController senha = TextEditingController();

  login() async {
    try {
      await AuthService().login(email.text, senha.text);
    } on AuthException catch (e) {
      print(e.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    AuthService autenticador = AuthService();
    return Column(
      children: [
        Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Container(
                  height: 60,
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(158, 158, 158, 0.1),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Center(
                    child: TextFormField(
                      controller: email,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(158, 158, 158, 0.1),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Center(
                    child: TextFormField(
                      controller: senha,
                      onChanged: (value) {
                        print(value);
                      },
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  height: 20,
                  color: Colors.white,
                  child: InkWell(
                    onTap: () {},
                    child: const Text(
                      'Forgot Password? ',
                      style: TextStyle(
                          color: Color.fromARGB(255, 238, 15, 55),
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Center(
                  child: Container(
                    height: 80,
                    width: 400,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(80)),
                      color: Color.fromARGB(255, 238, 15, 55),
                    ),
                    child: TextButton(
                      onPressed: () {
                        print(email.text);
                        print(senha.text);
                        login();
                        if (autenticador.usuario != null) {
                          Navigator.of(context).pushNamed('/homepage');
                        }
                      },
                      child: const Text(
                        'LOGIN',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
