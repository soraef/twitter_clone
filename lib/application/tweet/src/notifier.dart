import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/application/auth/auth.dart';
import 'package:twitter_clone/application/core/event/event_bus_provider.dart';
import 'package:twitter_clone/application/tweet/src/event.dart';
import 'package:twitter_clone/application/tweet/src/model/tweet.dart';
import 'package:twitter_clone/infrastructure/tweet/tweet_repository.dart';

import 'model/tweets.dart';

final tweetNotifierProvider = ChangeNotifierProvider(
  (ref) => TweetNotifier(ref.read),
);

class TweetNotifier extends ChangeNotifier {
  TweetNotifier(this._read) {
    tweets = Tweets.empty();
  }

  late Tweets tweets;
  DateTime currentLoadDate = DateTime(2021, 7, 18);

  final Reader _read;

  AuthNotifier get _authNotifier => _read(authNotifierProvider);
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

  void like(String tweetId, String userId) {
    final target = tweets.findById(tweetId);

    if (target == null) {
      throw "tweetが存在しません";
    }

    tweets = tweets.put(target.like(userId));
    notifyListeners();
  }

  void retweet(String tweetId, String userId) {
    final target = tweets.findById(tweetId);

    if (target == null) {
      throw "tweetが存在しません";
    }

    tweets = tweets.put(target.retweet(userId));
    notifyListeners();
  }

  void reply(String replyTweetId, String userId, String text) {
    final replyTweet = Tweet.reply("test", userId, text, replyTweetId);
    tweets = tweets.put(replyTweet);
    notifyListeners();
  }

  Future<void> tweet(String userId, String text) async {
    final tweet = Tweet.create(userId, text);
    await _repository.save(tweet);
    tweets = tweets.put(tweet);
    _bus.fire(TweetAdded(tweet));
    notifyListeners();
  }

  UserAuth _user() {
    return _authNotifier.userAuth;
  }
}
