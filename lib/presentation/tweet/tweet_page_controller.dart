import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/application/auth/auth.dart';
import 'package:twitter_clone/application/tweet/src/notifier.dart';

final tweetPageController = ChangeNotifierProvider(
  (ref) => TweetPageController(ref.read),
);

class TweetPageController extends ChangeNotifier {
  TweetPageController(this._read);

  final Reader _read;

  TweetNotifier get _tweetNotifier => _read(tweetNotifierProvider);
  AuthNotifier get _authNotifier => _read(authNotifierProvider);

  void tweet(String text) {
    final user = _authNotifier.userAuth;
    if (user.isSignIn) {
      _tweetNotifier.tweet(user.uid!, text);
    }
  }
}
