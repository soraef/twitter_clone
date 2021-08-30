import 'dart:async';

import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/application/core/event/event_bus_provider.dart';
import 'package:twitter_clone/application/tweet/event.dart';
import 'package:twitter_clone/infrastructure/user/user_repository.dart';

import '../../domain/user/src/users.dart';

final userDispatcherProvider = ChangeNotifierProvider(
  (ref) => UserDispatcher(ref.read),
);

class UserDispatcher extends ChangeNotifier {
  UserDispatcher(this._read) {
    eventSubscription = _bus.on<TweetAdded>().listen((event) {
      if (!users.exist(event.tweet.id)) {
        loadUser(event.tweet.userId);
      }
    });
  }

  Users users = Users.empty();

  final Reader _read;
  final StreamController<String> userAddedStreamController =
      StreamController<String>();
  late StreamSubscription eventSubscription;

  UserRepository get _repository => _read(userRepositoryProvider);
  EventBus get _bus => _read(eventBusProvider);

  Future<void> loadUser(String id) async {
    final user = await _repository.fetch(id);
    if (user != null) {
      users = users.put(user);
      userAddedStreamController.sink.add(id);
      notifyListeners();
    }
  }

  Stream<String> userAdded() {
    return userAddedStreamController.stream;
  }

  @override
  void dispose() {
    userAddedStreamController.close();
    eventSubscription.cancel();
    super.dispose();
  }
}
