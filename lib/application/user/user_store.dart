import 'dart:async';

import 'package:event_bus/event_bus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/application/core/event/event_bus_provider.dart';
import 'package:twitter_clone/application/tweet/event.dart';
import 'package:twitter_clone/infrastructure/user/user_repository.dart';

import '../../domain/user/src/users.dart';

final userStoreProvider = StateNotifierProvider<UserStore, Users>(
  (ref) => UserStore(ref.read),
);

class UserStore extends StateNotifier<Users> {
  UserStore(this._read) : super(Users.empty()) {
    eventSubscription = _bus.on<TweetAdded>().listen((event) {
      if (!state.exist(event.tweet.id)) {
        loadUser(event.tweet.userId);
      }
    });
  }

  final Reader _read;
  late StreamSubscription eventSubscription;

  UserRepository get _repository => _read(userRepositoryProvider);
  EventBus get _bus => _read(eventBusProvider);

  Future<void> loadUser(String id) async {
    final user = await _repository.fetch(id);
    if (user != null) {
      state = state.put(user);
    }
  }

  @override
  void dispose() {
    eventSubscription.cancel();
    super.dispose();
  }
}
