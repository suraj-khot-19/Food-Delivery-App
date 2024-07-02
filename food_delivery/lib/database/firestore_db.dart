import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_delivery/auth/auth_service.dart';
import 'package:food_delivery/models/food_model.dart';

class FirestoreDb {
  //get collection of order
  final CollectionReference orders =
      FirebaseFirestore.instance.collection("food_orders");

  //saving
  Future<void> saveOrdersToDb(
      String receipt, String address, List<CradDetails> list) async {
    await orders.add({
      'date': DateTime.now(),
      'email': AuthService().currentUser()!.email,
      'address': address,
      'order': receipt,
      'cardInfo': list.map((card) => card.toMap()).toList(),
    });
  }
}
