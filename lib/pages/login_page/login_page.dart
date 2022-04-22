import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:working_with_firebase/components/text_with_inkwellbutton.dart';
import 'package:working_with_firebase/pages/login_page/components/login_page_form.dart';
import 'package:working_with_firebase/pages/login_page/components/login_page_image_stack.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          elevation: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
        preferredSize: const Size.fromHeight(0),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const LoginPageImageStack(),
            Container(
              width: double.infinity,
              height: 75,
              color: Colors.white,
              child: const Text(
                'Login Now.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.white,
              child: const Text(
                'Please enter the details below to continue',
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 0.3),
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const LoginPageForm(),
            const TextWithInkWellButton(
                buttonText: 'Register',
                pageText: 'Dont have and account! ',
                routeOffButton: '/registerpage')
          ],
        ),
      ),
    );
  }
}
