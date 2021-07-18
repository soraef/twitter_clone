import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/application/tweet/tweet.dart';
import 'package:twitter_clone/application/user/user.dart';
import 'package:twitter_clone/presentation/timeline/timeline_state.dart';

/// アプリケーション層の[Users]と[Tweets]からTimeLineに表示するべき[TimeLineItemState]を合成
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
