import 'dart:ffi';

import 'package:flutter/material.dart';

class IncrementButton extends StatelessWidget {
  final void Function() increment;
  const IncrementButton({Key? key, required this.increment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: increment,
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }
}
