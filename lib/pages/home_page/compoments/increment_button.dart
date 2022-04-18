import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddUser extends StatelessWidget {
  final String? fullName;
  final String? company;
  final int? age;
  const AddUser({
    Key? key,
    this.age,
    this.company,
    this.fullName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    Future<void> addUser() {
      return users.doc('users').set({'full_name': "Mary Jane", 'age': 18});
    }

    return TextButton(
      onPressed: addUser,
      child: const Text(
        "Add User",
      ),
    );
  }
}
