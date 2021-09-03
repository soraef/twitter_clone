import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/application/core/store/store.dart';
import '../../domain/account/src/account.dart';

final accountStoreProvider = StateNotifierProvider<AccountStore, Account?>(
  (ref) => AccountStore(),
);

class AccountStore extends Store<Account?> {
  AccountStore() : super(null);
}
