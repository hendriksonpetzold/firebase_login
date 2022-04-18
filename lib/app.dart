import 'package:flutter/material.dart';
import 'package:working_with_firebase/pages/home_page/compoments/increment_button.dart';
import 'package:working_with_firebase/pages/home_page/home_page.dart';
import 'package:working_with_firebase/pages/login_page/login_page.dart';
import 'package:working_with_firebase/pages/onboarding_page/onboarding_page.dart';
import 'package:working_with_firebase/pages/register_page/register_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (_) => const OnboardingPage(),
        '/homepage': (_) => const HomePage(title: 'HomePage'),
        '/loginpage': (_) => const LoginPage(),
        '/registerpage': (_) => const RegisterPage(),
      },
    );
  }
}
