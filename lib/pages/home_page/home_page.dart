import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:working_with_firebase/pages/home_page/component/increment_button.dart';
import 'package:working_with_firebase/pages/home_page/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    setState(() {});

    () async {
      await controller.counterGet();
    };
    controller.userCheck();
    setState(() {});
  }

  HomeController controller = HomeController();

  @override
  Widget build(BuildContext context) {
    controller.counterGet();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(controller.userEmail),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${controller.fireBaseCounter}',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(
              height: 50,
            ),
            TextButton(
              onPressed: () {
                FirebaseAuth.instance.signOut().then(
                      (value) => {
                        Navigator.of(context).pushNamed('/'),
                      },
                    );
              },
              child: const Text('LOGOUT'),
            ),
          ],
        ),
      ),
      floatingActionButton: IncrementButton(
        increment: () async {
          await controller.incrementCounter(() {
            setState(() {});
          });
        },
      ),
    );
  }
}
