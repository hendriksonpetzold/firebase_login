import 'package:cloud_firestore/cloud_firestore.dart';

class HomeController {
  int counter = 0;
  int finalCounter = 0;
  var fireBaseRef = FirebaseFirestore.instance.collection('contador');
  void counterGet() async {
    var result = await fireBaseRef.get();
    finalCounter = result.docs.first.get('incrementcounter');
  }
}
