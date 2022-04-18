import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:working_with_firebase/pages/onboarding_page/components/getstarted_button.dart';
import 'package:working_with_firebase/pages/onboarding_page/components/image_using_stack.dart';
import 'package:working_with_firebase/components/text_with_inkwellbutton.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

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
      body: Column(
        children: [
          const ImageUsingStack(),
          Container(
            width: double.infinity,
            height: 70,
            color: Colors.white,
            child: const Text(
              'Translate & Earn.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: double.infinity,
            height: 80,
            color: Colors.white,
            child: const Text(
              'Now its is easy to earn money, just use the translator and collect points',
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 0.3),
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: double.infinity,
            height: 50,
            color: Colors.white,
            child: Row(
              children: [
                const SizedBox(
                  width: 190,
                ),
                Container(
                  width: 8,
                  height: 30,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Color.fromARGB(255, 238, 15, 55),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  width: 7,
                  height: 13,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Color.fromRGBO(238, 15, 55, 0.3),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  width: 7,
                  height: 13,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Color.fromRGBO(238, 15, 55, 0.3),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const GetStartedButton(),
          const SizedBox(
            height: 20,
          ),
          const TextWithInkWellButton(
            buttonText: 'Login',
            pageText: 'Already have an acount? ',
            routeOffButton: '/loginpage',
          ),
        ],
      ),
    );
  }
}
