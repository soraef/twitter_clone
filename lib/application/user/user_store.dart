import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/application/core/store/store.dart';

import '../../domain/user/src/users.dart';

final userStoreProvider = StateNotifierProvider<UserStore, Users>(
  (ref) => UserStore(),
);

class UserStore extends Store<Users> {
  UserStore() : super(Users.empty());
}
