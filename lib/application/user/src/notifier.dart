import 'dart:async';
import 'dart:io';

import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/application/core/event/event_bus_provider.dart';
import 'package:twitter_clone/application/tweet/src/event.dart';
import 'package:twitter_clone/infrastructure/user/user_repository.dart';

import 'model/users.dart';

final userNotifierProvider = ChangeNotifierProvider(
  (ref) => UserNotifier(ref.read),
);

class UserNotifier extends ChangeNotifier {
  UserNotifier(this._read) {
    eventSubscription = _bus.on<TweetAdded>().listen((event) {
      print("tweet added evet");
      if (!users.exist(event.tweet.id)) {
        print("load user");
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
    print(user);
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