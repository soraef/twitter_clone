import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/application/auth/auth_store.dart';
import 'package:twitter_clone/application/tweet/tweet_service.dart';

final tweetPageController = ChangeNotifierProvider(
  (ref) => TweetPageController(ref.read),
);

class TweetPageController extends ChangeNotifier {
  TweetPageController(this._read);

  final Reader _read;

  TweetServcie get _tweetService => _read(tweetServiceProvider);

  void tweet(String text) {
    final user = _read(authStoreProvider);
    if (user.isSignIn) {
      _tweetService.tweet(user.uid!, text);
    }
  }
}
