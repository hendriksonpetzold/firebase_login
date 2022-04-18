import 'package:flutter/material.dart';
import 'package:working_with_firebase/app.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  runApp(const MyApp());
  await Firebase.initializeApp();
}
