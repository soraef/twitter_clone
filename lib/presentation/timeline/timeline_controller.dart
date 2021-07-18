import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/application/tweet/tweet.dart';
import 'package:twitter_clone/application/user/user.dart';
import 'package:twitter_clone/presentation/timeline/timeline_state.dart';

class TimeLineController extends ChangeNotifier {
  TimeLineController(this._read);

  TimeLineState state = TimeLineState([]);

  final Reader _read;

  UserNotifier get _userNotifier => _read(userNotifierProvider);
  TweetNotifier get _tweetNotifier => _read(tweetNotifierProvider);

  void load() {
    _tweetNotifier.load();
  }
}

final loadedTweetProvider = Provider<List<TimeLineItemState>>((ref) {
  final users = ref.watch(userNotifierProvider).users;
  final tweets = ref.watch(tweetNotifierProvider).tweets;

  return tweets.values
      .where((tweet) => users.exist(tweet.userId))
      .map(
        (tweet) => TimeLineItemState(
          tweet: tweet,
          user: users.findById(tweet.userId)!,
        ),
      )
      .toList();
});
