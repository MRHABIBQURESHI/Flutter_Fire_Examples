import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nov20/user_model.dart';

saveUser({
  required String name,
  required String phone,
}) async {
  final doc = await FirebaseFirestore.instance
      .collection('users')
      .add({"name": name, "phone": phone});
  print(doc.id);
}

Future<List<UserModel>> getUsers() async {
  final querySnp = await FirebaseFirestore.instance.collection('users').get();
  List<UserModel> users = [];
  for (var doc in querySnp.docs) {
    users.add(UserModel.fromJson(doc.data()));
  }
  return users;
}
