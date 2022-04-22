import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:working_with_firebase/pages/home_page/controller/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  HomeController controller = HomeController();
  Future<void> _incrementCounter() {
    setState(() {
      controller.counter++;
    });
    return controller.fireBaseRef
        .doc('contador')
        .set({'incrementcounter': controller.counter});
  }

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
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${controller.finalCounter}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
