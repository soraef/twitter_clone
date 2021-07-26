import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/application/auth/auth.dart';
import 'package:twitter_clone/application/core/event/event_bus_provider.dart';
import 'package:twitter_clone/application/tweet/src/event.dart';
import 'package:twitter_clone/application/tweet/src/model/tweet.dart';
import 'package:twitter_clone/infrastructure/tweet/tweet_repository.dart';

import 'model/tweets.dart';

final tweetDispatcherProvider = ChangeNotifierProvider(
  (ref) => TweetDispatcher(ref.read),
);

class TweetDispatcher extends ChangeNotifier {
  TweetDispatcher(this._read) {
    tweets = Tweets.empty();
  }

  late Tweets tweets;
  DateTime currentLoadDate = DateTime(2021, 7, 18);

  final Reader _read;

  TweetRepository get _repository => _read(tweetRepositoryProvider);
  EventBus get _bus => _read(eventBusProvider);

  void load() async {
    final tweetList = await _repository.fetchOrderByCreatedAt(currentLoadDate);
    print("load");
    print(tweetList);
    tweets = tweets.putAll(tweetList);

    tweetList.forEach((tweet) {
      _bus.fire(TweetAdded(tweet));
    });

    notifyListeners();
  }

  Future<void> tweet(String userId, String text) async {
    final tweet = Tweet.create(userId, text);
    await _repository.save(tweet);
    tweets = tweets.put(tweet);
    _bus.fire(TweetAdded(tweet));
    notifyListeners();
  }
}
