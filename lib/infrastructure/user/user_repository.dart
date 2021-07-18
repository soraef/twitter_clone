import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/application/user/src/model/user.dart';

final userRepositoryProvider = Provider(
  (ref) => UserRepository(),
);

class UserRepository {
  Future<User?> fetch(String id) async {
    final data =
        await FirebaseFirestore.instance.collection("account").doc(id).get();
    if (!data.exists) {
      return null;
    }

    final userData = data.data();

    if (userData != null) {
      return User.fromJson(userData);
    }
  }
}
