import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/application/auth/auth.dart';
import 'package:twitter_clone/application/tweet/tweet.dart';

final tweetPageController = ChangeNotifierProvider(
  (ref) => TweetPageController(ref.read),
);

class TweetPageController extends ChangeNotifier {
  TweetPageController(this._read);

  final Reader _read;

  TweetDispatcher get _tweetNotifier => _read(tweetDispatcherProvider);
  AuthDispatcher get _authNotifier => _read(authDispatcherProvider);

  void tweet(String text) {
    final user = _authNotifier.userAuth;
    if (user.isSignIn) {
      _tweetNotifier.tweet(user.uid!, text);
    }
  }
}
