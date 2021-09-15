import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/domain/user/user.dart';

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

  Future<Iterable<User?>> fetchByIds(Iterable<String> ids) async {
    final datas = ids.map((id) => fetch(id)).toList();
    return Future.wait(datas);
  }
}
