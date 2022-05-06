import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeController {
  int? fireBaseCounter;
  String userEmail = 'Nenhum Usuário';
  final user = FirebaseAuth.instance.currentUser;
  CollectionReference fireBaseRef =
      FirebaseFirestore.instance.collection('contador');

  Future<void> counterGet() async {
    if (user != null) {
      var result = await fireBaseRef.doc(user!.uid).get();
      fireBaseCounter = result.get('incrementcounter');
    } else {
      var result = await fireBaseRef.doc('contador').get();
      fireBaseCounter = result.get('incrementcounter');
    }
  }

  userCheck() {
    if (user != null) {
      userEmail = user!.email.toString();
    }
  }

  Future<void> incrementCounter(Function callback) async {
    int util = 0;
    if (fireBaseCounter != null) {
      util = fireBaseCounter!;
      util++;
      fireBaseCounter = util;
    }

    if (user != null) {
      fireBaseRef.doc(user!.uid).set({'incrementcounter': fireBaseCounter});
    } else {
      fireBaseRef.doc('contador').set({'incrementcounter': fireBaseCounter});
    }
    callback();
  }
}
