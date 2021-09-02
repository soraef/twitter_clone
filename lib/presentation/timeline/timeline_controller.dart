import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/application/tweet/tweet_store.dart';
import 'package:twitter_clone/application/user/user_store.dart';
import 'package:twitter_clone/presentation/timeline/timeline_state.dart';

/// アプリケーション層の[Users]と[Tweets]からTimeLineに表示するべき[TimeLineItemState]を合成
final loadedTweetProvider = Provider<List<TimeLineItemState>>((ref) {
  final users = ref.watch(userStoreProvider);
  final tweets = ref.watch(tweetStoreProvider);

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
