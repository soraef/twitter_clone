import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/domain/account/account.dart';

final accountRepositoryProvider = Provider((ref) => AccountRepository());

class AccountRepository {
  Future<Account?> fetch(String id) async {
    final data =
        await FirebaseFirestore.instance.collection("account").doc(id).get();

    if (data.exists) {
      final accountData = data.data();
      if (accountData != null) return Account.fromJson(accountData);
    }
  }

  Future<void> save(Account account) async {
    FirebaseFirestore.instance
        .collection("account")
        .doc(account.id)
        .set(account.toJson());
  }
}
